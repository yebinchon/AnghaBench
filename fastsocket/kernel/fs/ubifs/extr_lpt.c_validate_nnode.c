
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_nnode {int num; int level; TYPE_1__* nbranch; } ;
struct ubifs_info {int lpt_hght; int leb_size; int pnode_sz; int nnode_sz; int lpt_first; int lpt_last; scalar_t__ big_lpt; } ;
struct TYPE_2__ {int lnum; int offs; } ;


 int EINVAL ;
 int UBIFS_LPT_FANOUT ;
 int calc_nnode_num_from_parent (struct ubifs_info const*,struct ubifs_nnode*,int) ;

__attribute__((used)) static int validate_nnode(const struct ubifs_info *c, struct ubifs_nnode *nnode,
     struct ubifs_nnode *parent, int iip)
{
 int i, lvl, max_offs;

 if (c->big_lpt) {
  int num = calc_nnode_num_from_parent(c, parent, iip);

  if (nnode->num != num)
   return -EINVAL;
 }
 lvl = parent ? parent->level - 1 : c->lpt_hght;
 if (lvl < 1)
  return -EINVAL;
 if (lvl == 1)
  max_offs = c->leb_size - c->pnode_sz;
 else
  max_offs = c->leb_size - c->nnode_sz;
 for (i = 0; i < UBIFS_LPT_FANOUT; i++) {
  int lnum = nnode->nbranch[i].lnum;
  int offs = nnode->nbranch[i].offs;

  if (lnum == 0) {
   if (offs != 0)
    return -EINVAL;
   continue;
  }
  if (lnum < c->lpt_first || lnum > c->lpt_last)
   return -EINVAL;
  if (offs < 0 || offs > max_offs)
   return -EINVAL;
 }
 return 0;
}
