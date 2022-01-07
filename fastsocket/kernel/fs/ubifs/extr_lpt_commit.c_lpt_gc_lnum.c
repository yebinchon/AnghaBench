
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int leb_size; int lp_mutex; int ubi; void* lpt_buf; } ;


 int dbg_lp (char*,int) ;
 int get_lpt_node_len (struct ubifs_info*,int) ;
 int get_lpt_node_type (struct ubifs_info*,void*,int*) ;
 int get_pad_len (struct ubifs_info*,void*,int) ;
 int is_a_node (struct ubifs_info*,void*,int) ;
 int make_node_dirty (struct ubifs_info*,int,int,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ubi_read (int ,int,void*,int ,int) ;
 int ubifs_assert (int) ;
 int ubifs_err (char*,int,int) ;

__attribute__((used)) static int lpt_gc_lnum(struct ubifs_info *c, int lnum)
{
 int err, len = c->leb_size, node_type, node_num, node_len, offs;
 void *buf = c->lpt_buf;

 dbg_lp("LEB %d", lnum);
 err = ubi_read(c->ubi, lnum, buf, 0, c->leb_size);
 if (err) {
  ubifs_err("cannot read LEB %d, error %d", lnum, err);
  return err;
 }
 while (1) {
  if (!is_a_node(c, buf, len)) {
   int pad_len;

   pad_len = get_pad_len(c, buf, len);
   if (pad_len) {
    buf += pad_len;
    len -= pad_len;
    continue;
   }
   return 0;
  }
  node_type = get_lpt_node_type(c, buf, &node_num);
  node_len = get_lpt_node_len(c, node_type);
  offs = c->leb_size - len;
  ubifs_assert(node_len != 0);
  mutex_lock(&c->lp_mutex);
  err = make_node_dirty(c, node_type, node_num, lnum, offs);
  mutex_unlock(&c->lp_mutex);
  if (err)
   return err;
  buf += node_len;
  len -= node_len;
 }
 return 0;
}
