
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_extent_tree {struct ocfs2_dx_root_block* et_object; } ;
struct ocfs2_dx_root_block {int dummy; } ;


 int BUG_ON (int) ;
 int OCFS2_IS_VALID_DX_ROOT (struct ocfs2_dx_root_block*) ;

__attribute__((used)) static int ocfs2_dx_root_sanity_check(struct ocfs2_extent_tree *et)
{
 struct ocfs2_dx_root_block *dx_root = et->et_object;

 BUG_ON(!OCFS2_IS_VALID_DX_ROOT(dx_root));

 return 0;
}
