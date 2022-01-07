
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct ubifs_scan_leb {int dummy; } ;
struct ubifs_info {int leb_size; int min_io_size; } ;
struct ubifs_ch {int len; } ;


 int ALIGN (int ,int) ;
 int EINVAL ;
 struct ubifs_scan_leb* ERR_PTR (int) ;
 int EUCLEAN ;
 scalar_t__ IS_ERR (struct ubifs_scan_leb*) ;



 int SCANNED_EMPTY_SPACE ;

 int cond_resched () ;
 int dbg_err (char*) ;
 int dbg_scan (char*,int,int,int) ;
 int le32_to_cpu (int ) ;
 int ubifs_add_snod (struct ubifs_info const*,struct ubifs_scan_leb*,void*,int) ;
 int ubifs_end_scan (struct ubifs_info const*,struct ubifs_scan_leb*,int,int) ;
 int ubifs_err (char*,int,...) ;
 int ubifs_scan_a_node (struct ubifs_info const*,void*,int,int,int,int) ;
 int ubifs_scan_destroy (struct ubifs_scan_leb*) ;
 int ubifs_scanned_corruption (struct ubifs_info const*,int,int,void*) ;
 struct ubifs_scan_leb* ubifs_start_scan (struct ubifs_info const*,int,int,void*) ;

struct ubifs_scan_leb *ubifs_scan(const struct ubifs_info *c, int lnum,
      int offs, void *sbuf, int quiet)
{
 void *buf = sbuf + offs;
 int err, len = c->leb_size - offs;
 struct ubifs_scan_leb *sleb;

 sleb = ubifs_start_scan(c, lnum, offs, sbuf);
 if (IS_ERR(sleb))
  return sleb;

 while (len >= 8) {
  struct ubifs_ch *ch = buf;
  int node_len, ret;

  dbg_scan("look at LEB %d:%d (%d bytes left)",
    lnum, offs, len);

  cond_resched();

  ret = ubifs_scan_a_node(c, buf, len, lnum, offs, quiet);
  if (ret > 0) {

   offs += ret;
   buf += ret;
   len -= ret;
   continue;
  }

  if (ret == SCANNED_EMPTY_SPACE)

   break;

  switch (ret) {
  case 128:
   dbg_err("garbage");
   goto corrupted;
  case 129:
   break;
  case 130:
  case 131:
   dbg_err("bad node");
   goto corrupted;
  default:
   dbg_err("unknown");
   err = -EINVAL;
   goto error;
  }

  err = ubifs_add_snod(c, sleb, buf, offs);
  if (err)
   goto error;

  node_len = ALIGN(le32_to_cpu(ch->len), 8);
  offs += node_len;
  buf += node_len;
  len -= node_len;
 }

 if (offs % c->min_io_size) {
  if (!quiet)
   ubifs_err("empty space starts at non-aligned offset %d",
      offs);
  goto corrupted;;
 }

 ubifs_end_scan(c, sleb, lnum, offs);

 for (; len > 4; offs += 4, buf = buf + 4, len -= 4)
  if (*(uint32_t *)buf != 0xffffffff)
   break;
 for (; len; offs++, buf++, len--)
  if (*(uint8_t *)buf != 0xff) {
   if (!quiet)
    ubifs_err("corrupt empty space at LEB %d:%d",
       lnum, offs);
   goto corrupted;
  }

 return sleb;

corrupted:
 if (!quiet) {
  ubifs_scanned_corruption(c, lnum, offs, buf);
  ubifs_err("LEB %d scanning failed", lnum);
 }
 err = -EUCLEAN;
 ubifs_scan_destroy(sleb);
 return ERR_PTR(err);

error:
 ubifs_err("LEB %d scanning failed, error %d", lnum, err);
 ubifs_scan_destroy(sleb);
 return ERR_PTR(err);
}
