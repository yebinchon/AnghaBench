
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int min_io_size; int leb_size; int ubi; } ;


 int UBI_UNKNOWN ;
 int dbg_rcvry (char*,int,int) ;
 int is_empty (void*,int) ;
 int ubi_leb_change (int ,int,void*,int,int ) ;
 int ubi_read (int ,int,void*,int,int) ;
 int ubifs_leb_unmap (struct ubifs_info const*,int) ;

__attribute__((used)) static int recover_head(const struct ubifs_info *c, int lnum, int offs,
   void *sbuf)
{
 int len, err;

 if (c->min_io_size > 1)
  len = c->min_io_size;
 else
  len = 512;
 if (offs + len > c->leb_size)
  len = c->leb_size - offs;

 if (!len)
  return 0;


 err = ubi_read(c->ubi, lnum, sbuf, offs, len);
 if (err || !is_empty(sbuf, len)) {
  dbg_rcvry("cleaning head at %d:%d", lnum, offs);
  if (offs == 0)
   return ubifs_leb_unmap(c, lnum);
  err = ubi_read(c->ubi, lnum, sbuf, 0, offs);
  if (err)
   return err;
  return ubi_leb_change(c->ubi, lnum, sbuf, offs, UBI_UNKNOWN);
 }

 return 0;
}
