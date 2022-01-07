
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int gc_lnum; int leb_size; } ;


 int EINVAL ;
 int LPROPS_TAKEN ;
 int ubifs_change_one_lp (struct ubifs_info*,int,int ,int ,int ,int ,int ) ;
 int ubifs_err (char*) ;

__attribute__((used)) static int take_gc_lnum(struct ubifs_info *c)
{
 int err;

 if (c->gc_lnum == -1) {
  ubifs_err("no LEB for GC");
  return -EINVAL;
 }


 err = ubifs_change_one_lp(c, c->gc_lnum, c->leb_size, 0,
      LPROPS_TAKEN, 0, 0);
 return err;
}
