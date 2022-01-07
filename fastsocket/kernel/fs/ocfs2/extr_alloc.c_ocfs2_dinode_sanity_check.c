
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_extent_tree {int * et_ops; struct ocfs2_dinode* et_object; } ;
struct ocfs2_dinode {int dummy; } ;


 int BUG_ON (int) ;
 int OCFS2_IS_VALID_DINODE (struct ocfs2_dinode*) ;
 int ocfs2_dinode_et_ops ;

__attribute__((used)) static int ocfs2_dinode_sanity_check(struct ocfs2_extent_tree *et)
{
 struct ocfs2_dinode *di = et->et_object;

 BUG_ON(et->et_ops != &ocfs2_dinode_et_ops);
 BUG_ON(!OCFS2_IS_VALID_DINODE(di));

 return 0;
}
