
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_unclean_leb {int lnum; int endpt; } ;
struct ubifs_info {int min_io_size; int ubi; int sbuf; } ;
struct ubifs_ch {int len; } ;


 int ALIGN (int,int) ;
 int EBADMSG ;
 int EUCLEAN ;
 int SCANNED_A_NODE ;
 int SCANNED_EMPTY_SPACE ;
 int UBI_UNKNOWN ;
 int cond_resched () ;
 int dbg_rcvry (char*,int,...) ;
 int le32_to_cpu (int ) ;
 int ubi_leb_change (int ,int,void*,int,int ) ;
 int ubi_read (int ,int,void*,int,int) ;
 int ubifs_err (char*,int,int) ;
 int ubifs_leb_unmap (struct ubifs_info const*,int) ;
 int ubifs_pad (struct ubifs_info const*,void*,int) ;
 int ubifs_scan_a_node (struct ubifs_info const*,void*,int,int,int,int) ;
 int ubifs_scanned_corruption (struct ubifs_info const*,int,int,void*) ;

__attribute__((used)) static int clean_an_unclean_leb(const struct ubifs_info *c,
    struct ubifs_unclean_leb *ucleb, void *sbuf)
{
 int err, lnum = ucleb->lnum, offs = 0, len = ucleb->endpt, quiet = 1;
 void *buf = sbuf;

 dbg_rcvry("LEB %d len %d", lnum, len);

 if (len == 0) {

  err = ubifs_leb_unmap(c, lnum);
  if (err)
   return err;
  return 0;
 }

 err = ubi_read(c->ubi, lnum, buf, offs, len);
 if (err && err != -EBADMSG)
  return err;

 while (len >= 8) {
  int ret;

  cond_resched();


  ret = ubifs_scan_a_node(c, buf, len, lnum, offs, quiet);

  if (ret == SCANNED_A_NODE) {

   struct ubifs_ch *ch = buf;
   int node_len;

   node_len = ALIGN(le32_to_cpu(ch->len), 8);
   offs += node_len;
   buf += node_len;
   len -= node_len;
   continue;
  }

  if (ret > 0) {

   offs += ret;
   buf += ret;
   len -= ret;
   continue;
  }

  if (ret == SCANNED_EMPTY_SPACE) {
   ubifs_err("unexpected empty space at %d:%d",
      lnum, offs);
   return -EUCLEAN;
  }

  if (quiet) {

   quiet = 0;
   continue;
  }

  ubifs_scanned_corruption(c, lnum, offs, buf);
  return -EUCLEAN;
 }


 len = ALIGN(ucleb->endpt, c->min_io_size);
 if (len > ucleb->endpt) {
  int pad_len = len - ALIGN(ucleb->endpt, 8);

  if (pad_len > 0) {
   buf = c->sbuf + len - pad_len;
   ubifs_pad(c, buf, pad_len);
  }
 }


 err = ubi_leb_change(c->ubi, lnum, sbuf, len, UBI_UNKNOWN);
 if (err)
  return err;

 dbg_rcvry("cleaned LEB %d", lnum);

 return 0;
}
