
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int orph_first; int orph_last; int ohead_lnum; scalar_t__ ohead_offs; } ;


 int ubifs_leb_unmap (struct ubifs_info*,int) ;

int ubifs_clear_orphans(struct ubifs_info *c)
{
 int lnum, err;

 for (lnum = c->orph_first; lnum <= c->orph_last; lnum++) {
  err = ubifs_leb_unmap(c, lnum);
  if (err)
   return err;
 }
 c->ohead_lnum = c->orph_first;
 c->ohead_offs = 0;
 return 0;
}
