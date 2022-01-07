
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int min_io_size; int leb_cnt; int leb_size; int ubi; scalar_t__ ro_media; } ;
struct ubifs_ch {int node_type; } ;


 int ALIGN (int,int) ;
 int EROFS ;
 int dbg_dump_node (struct ubifs_info*,void*) ;
 int dbg_dump_stack () ;
 int dbg_io (char*,int,int,int ,int,int) ;
 int dbg_ntype (int ) ;
 int ubi_leb_write (int ,int,void*,int,int,int) ;
 int ubifs_assert (int) ;
 int ubifs_err (char*,int,int,int,int) ;
 int ubifs_prepare_node (struct ubifs_info*,void*,int,int) ;

int ubifs_write_node(struct ubifs_info *c, void *buf, int len, int lnum,
       int offs, int dtype)
{
 int err, buf_len = ALIGN(len, c->min_io_size);

 dbg_io("LEB %d:%d, %s, length %d (aligned %d)",
        lnum, offs, dbg_ntype(((struct ubifs_ch *)buf)->node_type), len,
        buf_len);
 ubifs_assert(lnum >= 0 && lnum < c->leb_cnt && offs >= 0);
 ubifs_assert(offs % c->min_io_size == 0 && offs < c->leb_size);

 if (c->ro_media)
  return -EROFS;

 ubifs_prepare_node(c, buf, len, 1);
 err = ubi_leb_write(c->ubi, lnum, buf, offs, buf_len, dtype);
 if (err) {
  ubifs_err("cannot write %d bytes to LEB %d:%d, error %d",
     buf_len, lnum, offs, err);
  dbg_dump_node(c, buf);
  dbg_dump_stack();
 }

 return err;
}
