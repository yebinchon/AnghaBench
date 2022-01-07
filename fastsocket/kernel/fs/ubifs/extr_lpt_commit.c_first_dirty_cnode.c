
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_nnode {TYPE_1__* nbranch; } ;
struct ubifs_cnode {scalar_t__ level; int flags; } ;
struct TYPE_2__ {struct ubifs_cnode* cnode; } ;


 int DIRTY_CNODE ;
 int UBIFS_LPT_FANOUT ;
 scalar_t__ test_bit (int ,int *) ;
 int ubifs_assert (struct ubifs_nnode*) ;

__attribute__((used)) static struct ubifs_cnode *first_dirty_cnode(struct ubifs_nnode *nnode)
{
 ubifs_assert(nnode);
 while (1) {
  int i, cont = 0;

  for (i = 0; i < UBIFS_LPT_FANOUT; i++) {
   struct ubifs_cnode *cnode;

   cnode = nnode->nbranch[i].cnode;
   if (cnode &&
       test_bit(DIRTY_CNODE, &cnode->flags)) {
    if (cnode->level == 0)
     return cnode;
    nnode = (struct ubifs_nnode *)cnode;
    cont = 1;
    break;
   }
  }
  if (!cont)
   return (struct ubifs_cnode *)nnode;
 }
}
