
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_pnode {size_t iip; TYPE_1__* parent; } ;
struct ubifs_nbranch {int lnum; int offs; } ;
struct ubifs_info {int dummy; } ;
struct TYPE_2__ {struct ubifs_nbranch* nbranch; } ;


 scalar_t__ IS_ERR (struct ubifs_pnode*) ;
 int PTR_ERR (struct ubifs_pnode*) ;
 int do_make_pnode_dirty (struct ubifs_info*,struct ubifs_pnode*) ;
 struct ubifs_pnode* pnode_lookup (struct ubifs_info*,int) ;

__attribute__((used)) static int make_pnode_dirty(struct ubifs_info *c, int node_num, int lnum,
       int offs)
{
 struct ubifs_pnode *pnode;
 struct ubifs_nbranch *branch;

 pnode = pnode_lookup(c, node_num);
 if (IS_ERR(pnode))
  return PTR_ERR(pnode);
 branch = &pnode->parent->nbranch[pnode->iip];
 if (branch->lnum != lnum || branch->offs != offs)
  return 0;
 do_make_pnode_dirty(c, pnode);
 return 0;
}
