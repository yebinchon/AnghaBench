
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {scalar_t__ ohead_offs; int ohead_lnum; int orph_buf; int min_io_size; } ;


 int ALIGN (int,int ) ;
 int UBI_SHORTTERM ;
 int ubifs_assert (int) ;
 int ubifs_leb_change (struct ubifs_info*,int ,int ,int,int ) ;
 int ubifs_leb_unmap (struct ubifs_info*,int ) ;
 int ubifs_prepare_node (struct ubifs_info*,int ,int,int) ;
 int ubifs_write_node (struct ubifs_info*,int ,int,int ,scalar_t__,int ) ;

__attribute__((used)) static int do_write_orph_node(struct ubifs_info *c, int len, int atomic)
{
 int err = 0;

 if (atomic) {
  ubifs_assert(c->ohead_offs == 0);
  ubifs_prepare_node(c, c->orph_buf, len, 1);
  len = ALIGN(len, c->min_io_size);
  err = ubifs_leb_change(c, c->ohead_lnum, c->orph_buf, len,
           UBI_SHORTTERM);
 } else {
  if (c->ohead_offs == 0) {

   err = ubifs_leb_unmap(c, c->ohead_lnum);
   if (err)
    return err;
  }
  err = ubifs_write_node(c, c->orph_buf, len, c->ohead_lnum,
           c->ohead_offs, UBI_SHORTTERM);
 }
 return err;
}
