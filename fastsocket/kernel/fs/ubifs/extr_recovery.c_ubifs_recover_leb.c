
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_scan_leb {scalar_t__ ecc; } ;
struct ubifs_info {int leb_size; int min_io_size; } ;
struct ubifs_ch {int len; } ;


 int ALIGN (int ,int) ;
 int EINVAL ;
 struct ubifs_scan_leb* ERR_PTR (int) ;
 int EUCLEAN ;
 scalar_t__ IS_ERR (struct ubifs_scan_leb*) ;


 int SCANNED_A_NODE ;
 int SCANNED_EMPTY_SPACE ;

 int clean_buf (struct ubifs_info*,void**,int,int*,int*) ;
 int cond_resched () ;
 int dbg_err (char*) ;
 int dbg_rcvry (char*,int,int) ;
 int dbg_scan (char*,int,int,int) ;
 scalar_t__ drop_incomplete_group (struct ubifs_scan_leb*,int*) ;
 int first_non_ff (void*,int) ;
 int fix_unclean_leb (struct ubifs_info*,struct ubifs_scan_leb*,int) ;
 int is_empty (void*,int) ;
 scalar_t__ is_last_write (struct ubifs_info*,void*,int) ;
 int le32_to_cpu (int ) ;
 scalar_t__ no_more_nodes (struct ubifs_info*,void*,int,int,int) ;
 int ubifs_add_snod (struct ubifs_info*,struct ubifs_scan_leb*,void*,int) ;
 int ubifs_end_scan (struct ubifs_info*,struct ubifs_scan_leb*,int,int) ;
 int ubifs_err (char*,int,...) ;
 int ubifs_scan_a_node (struct ubifs_info*,void*,int,int,int,int) ;
 int ubifs_scan_destroy (struct ubifs_scan_leb*) ;
 int ubifs_scanned_corruption (struct ubifs_info*,int,int,void*) ;
 struct ubifs_scan_leb* ubifs_start_scan (struct ubifs_info*,int,int,void*) ;

struct ubifs_scan_leb *ubifs_recover_leb(struct ubifs_info *c, int lnum,
      int offs, void *sbuf, int grouped)
{
 int err, len = c->leb_size - offs, need_clean = 0, quiet = 1;
 int empty_chkd = 0, start = offs;
 struct ubifs_scan_leb *sleb;
 void *buf = sbuf + offs;

 dbg_rcvry("%d:%d", lnum, offs);

 sleb = ubifs_start_scan(c, lnum, offs, sbuf);
 if (IS_ERR(sleb))
  return sleb;

 if (sleb->ecc)
  need_clean = 1;

 while (len >= 8) {
  int ret;

  dbg_scan("look at LEB %d:%d (%d bytes left)",
    lnum, offs, len);

  cond_resched();





  ret = ubifs_scan_a_node(c, buf, len, lnum, offs, quiet);

  if (ret == SCANNED_A_NODE) {

   struct ubifs_ch *ch = buf;
   int node_len;

   err = ubifs_add_snod(c, sleb, buf, offs);
   if (err)
    goto error;
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
   if (!is_empty(buf, len)) {
    if (!is_last_write(c, buf, offs))
     break;
    clean_buf(c, &buf, lnum, &offs, &len);
    need_clean = 1;
   }
   empty_chkd = 1;
   break;
  }

  if (ret == 128 || ret == 130)
   if (is_last_write(c, buf, offs)) {
    clean_buf(c, &buf, lnum, &offs, &len);
    need_clean = 1;
    empty_chkd = 1;
    break;
   }

  if (ret == 129)
   if (no_more_nodes(c, buf, len, lnum, offs)) {
    clean_buf(c, &buf, lnum, &offs, &len);
    need_clean = 1;
    empty_chkd = 1;
    break;
   }

  if (quiet) {

   quiet = 0;
   continue;
  }

  switch (ret) {
  case 128:
   dbg_err("garbage");
   goto corrupted;
  case 129:
  case 130:
   dbg_err("bad node");
   goto corrupted;
  default:
   dbg_err("unknown");
   err = -EINVAL;
   goto error;
  }
 }

 if (!empty_chkd && !is_empty(buf, len)) {
  if (is_last_write(c, buf, offs)) {
   clean_buf(c, &buf, lnum, &offs, &len);
   need_clean = 1;
  } else {
   int corruption = first_non_ff(buf, len);

   ubifs_err("corrupt empty space LEB %d:%d, corruption "
      "starts at %d", lnum, offs, corruption);

   offs = corruption;
   buf += corruption;
   goto corrupted;
  }
 }


 if (grouped && drop_incomplete_group(sleb, &offs)) {
  buf = sbuf + offs;
  len = c->leb_size - offs;
  clean_buf(c, &buf, lnum, &offs, &len);
  need_clean = 1;
 }

 if (offs % c->min_io_size) {
  clean_buf(c, &buf, lnum, &offs, &len);
  need_clean = 1;
 }

 ubifs_end_scan(c, sleb, lnum, offs);

 if (need_clean) {
  err = fix_unclean_leb(c, sleb, start);
  if (err)
   goto error;
 }

 return sleb;

corrupted:
 ubifs_scanned_corruption(c, lnum, offs, buf);
 err = -EUCLEAN;
error:
 ubifs_err("LEB %d scanning failed", lnum);
 ubifs_scan_destroy(sleb);
 return ERR_PTR(err);
}
