
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ubifs_znode {size_t iip; TYPE_2__* parent; } ;
struct ubifs_zbranch {int offs; int lnum; scalar_t__ len; } ;
struct TYPE_3__ {int offs; int lnum; scalar_t__ len; } ;
struct ubifs_info {TYPE_1__ zroot; } ;
struct TYPE_4__ {struct ubifs_zbranch* zbranch; } ;


 int insert_old_idx (struct ubifs_info*,int ,int ) ;

int insert_old_idx_znode(struct ubifs_info *c, struct ubifs_znode *znode)
{
 if (znode->parent) {
  struct ubifs_zbranch *zbr;

  zbr = &znode->parent->zbranch[znode->iip];
  if (zbr->len)
   return insert_old_idx(c, zbr->lnum, zbr->offs);
 } else
  if (c->zroot.len)
   return insert_old_idx(c, c->zroot.lnum,
           c->zroot.offs);
 return 0;
}
