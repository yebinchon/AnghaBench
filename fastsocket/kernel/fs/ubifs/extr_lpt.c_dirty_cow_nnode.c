
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ubifs_nnode {size_t iip; TYPE_3__* parent; int flags; struct ubifs_nbranch* nbranch; int * cnext; } ;
struct ubifs_nbranch {TYPE_1__* cnode; } ;
struct ubifs_info {int dirty_nn_cnt; struct ubifs_nnode* nroot; } ;
struct TYPE_6__ {TYPE_2__* nbranch; } ;
struct TYPE_5__ {struct ubifs_nnode* nnode; } ;
struct TYPE_4__ {struct ubifs_nnode* parent; } ;


 int COW_CNODE ;
 int DIRTY_CNODE ;
 int ENOMEM ;
 struct ubifs_nnode* ERR_PTR (int ) ;
 int GFP_NOFS ;
 int OBSOLETE_CNODE ;
 int UBIFS_LPT_FANOUT ;
 int __clear_bit (int ,int *) ;
 int __set_bit (int ,int *) ;
 struct ubifs_nnode* kmalloc (int,int ) ;
 int memcpy (struct ubifs_nnode*,struct ubifs_nnode*,int) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int ubifs_add_nnode_dirt (struct ubifs_info*,struct ubifs_nnode*) ;
 int ubifs_assert (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct ubifs_nnode *dirty_cow_nnode(struct ubifs_info *c,
        struct ubifs_nnode *nnode)
{
 struct ubifs_nnode *n;
 int i;

 if (!test_bit(COW_CNODE, &nnode->flags)) {

  if (!test_and_set_bit(DIRTY_CNODE, &nnode->flags)) {
   c->dirty_nn_cnt += 1;
   ubifs_add_nnode_dirt(c, nnode);
  }
  return nnode;
 }


 n = kmalloc(sizeof(struct ubifs_nnode), GFP_NOFS);
 if (unlikely(!n))
  return ERR_PTR(-ENOMEM);

 memcpy(n, nnode, sizeof(struct ubifs_nnode));
 n->cnext = ((void*)0);
 __set_bit(DIRTY_CNODE, &n->flags);
 __clear_bit(COW_CNODE, &n->flags);


 for (i = 0; i < UBIFS_LPT_FANOUT; i++) {
  struct ubifs_nbranch *branch = &n->nbranch[i];

  if (branch->cnode)
   branch->cnode->parent = n;
 }

 ubifs_assert(!test_bit(OBSOLETE_CNODE, &nnode->flags));
 __set_bit(OBSOLETE_CNODE, &nnode->flags);

 c->dirty_nn_cnt += 1;
 ubifs_add_nnode_dirt(c, nnode);
 if (nnode->parent)
  nnode->parent->nbranch[n->iip].nnode = n;
 else
  c->nroot = n;
 return n;
}
