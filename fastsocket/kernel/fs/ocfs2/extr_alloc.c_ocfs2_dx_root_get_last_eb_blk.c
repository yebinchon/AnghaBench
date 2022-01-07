
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ocfs2_extent_tree {struct ocfs2_dx_root_block* et_object; } ;
struct ocfs2_dx_root_block {int dr_last_eb_blk; } ;


 int le64_to_cpu (int ) ;

__attribute__((used)) static u64 ocfs2_dx_root_get_last_eb_blk(struct ocfs2_extent_tree *et)
{
 struct ocfs2_dx_root_block *dx_root = et->et_object;

 return le64_to_cpu(dx_root->dr_last_eb_blk);
}
