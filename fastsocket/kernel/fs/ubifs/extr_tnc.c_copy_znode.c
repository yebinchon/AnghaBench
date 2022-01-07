
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_znode {scalar_t__ level; int child_cnt; struct ubifs_zbranch* zbranch; int flags; int * cnext; } ;
struct ubifs_zbranch {TYPE_1__* znode; } ;
struct ubifs_info {int dirty_zn_cnt; int max_znode_sz; } ;
struct TYPE_2__ {struct ubifs_znode* parent; } ;


 int COW_ZNODE ;
 int DIRTY_ZNODE ;
 int ENOMEM ;
 struct ubifs_znode* ERR_PTR (int ) ;
 int GFP_NOFS ;
 int OBSOLETE_ZNODE ;
 int __clear_bit (int ,int *) ;
 int __set_bit (int ,int *) ;
 int atomic_long_inc (int *) ;
 struct ubifs_znode* kmalloc (int ,int ) ;
 int memcpy (struct ubifs_znode*,struct ubifs_znode*,int ) ;
 int test_bit (int ,int *) ;
 int ubifs_assert (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct ubifs_znode *copy_znode(struct ubifs_info *c,
          struct ubifs_znode *znode)
{
 struct ubifs_znode *zn;

 zn = kmalloc(c->max_znode_sz, GFP_NOFS);
 if (unlikely(!zn))
  return ERR_PTR(-ENOMEM);

 memcpy(zn, znode, c->max_znode_sz);
 zn->cnext = ((void*)0);
 __set_bit(DIRTY_ZNODE, &zn->flags);
 __clear_bit(COW_ZNODE, &zn->flags);

 ubifs_assert(!test_bit(OBSOLETE_ZNODE, &znode->flags));
 __set_bit(OBSOLETE_ZNODE, &znode->flags);

 if (znode->level != 0) {
  int i;
  const int n = zn->child_cnt;


  for (i = 0; i < n; i++) {
   struct ubifs_zbranch *zbr = &zn->zbranch[i];

   if (zbr->znode)
    zbr->znode->parent = zn;
  }
 }

 atomic_long_inc(&c->dirty_zn_cnt);
 return zn;
}
