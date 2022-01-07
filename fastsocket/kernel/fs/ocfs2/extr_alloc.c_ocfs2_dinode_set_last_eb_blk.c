
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ocfs2_extent_tree {int * et_ops; struct ocfs2_dinode* et_object; } ;
struct ocfs2_dinode {int i_last_eb_blk; } ;


 int BUG_ON (int) ;
 int cpu_to_le64 (int ) ;
 int ocfs2_dinode_et_ops ;

__attribute__((used)) static void ocfs2_dinode_set_last_eb_blk(struct ocfs2_extent_tree *et,
      u64 blkno)
{
 struct ocfs2_dinode *di = et->et_object;

 BUG_ON(et->et_ops != &ocfs2_dinode_et_ops);
 di->i_last_eb_blk = cpu_to_le64(blkno);
}
