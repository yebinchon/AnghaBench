
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_nnode {int iip; TYPE_1__* nbranch; struct ubifs_nnode* parent; } ;
struct ubifs_info {int lpt_hght; } ;
struct TYPE_2__ {struct ubifs_nnode* nnode; } ;


 int UBIFS_LPT_FANOUT ;

__attribute__((used)) static struct ubifs_nnode *next_nnode(struct ubifs_info *c,
          struct ubifs_nnode *nnode, int *hght)
{
 struct ubifs_nnode *parent;
 int iip, h, i, found;

 parent = nnode->parent;
 if (!parent)
  return ((void*)0);
 if (nnode->iip == UBIFS_LPT_FANOUT - 1) {
  *hght -= 1;
  return parent;
 }
 for (iip = nnode->iip + 1; iip < UBIFS_LPT_FANOUT; iip++) {
  nnode = parent->nbranch[iip].nnode;
  if (nnode)
   break;
 }
 if (!nnode) {
  *hght -= 1;
  return parent;
 }
 for (h = *hght + 1; h < c->lpt_hght; h++) {
  found = 0;
  for (i = 0; i < UBIFS_LPT_FANOUT; i++) {
   if (nnode->nbranch[i].nnode) {
    found = 1;
    nnode = nnode->nbranch[i].nnode;
    *hght = h;
    break;
   }
  }
  if (!found)
   break;
 }
 return nnode;
}
