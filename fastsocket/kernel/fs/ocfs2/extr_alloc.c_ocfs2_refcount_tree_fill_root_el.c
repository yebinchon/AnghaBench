
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_refcount_block {int rf_list; } ;
struct ocfs2_extent_tree {int * et_root_el; struct ocfs2_refcount_block* et_object; } ;



__attribute__((used)) static void ocfs2_refcount_tree_fill_root_el(struct ocfs2_extent_tree *et)
{
 struct ocfs2_refcount_block *rb = et->et_object;

 et->et_root_el = &rb->rf_list;
}
