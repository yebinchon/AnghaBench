
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_extent_tree {int * et_root_el; struct ocfs2_dx_root_block* et_object; } ;
struct ocfs2_dx_root_block {int dr_list; } ;



__attribute__((used)) static void ocfs2_dx_root_fill_root_el(struct ocfs2_extent_tree *et)
{
 struct ocfs2_dx_root_block *dx_root = et->et_object;

 et->et_root_el = &dx_root->dr_list;
}
