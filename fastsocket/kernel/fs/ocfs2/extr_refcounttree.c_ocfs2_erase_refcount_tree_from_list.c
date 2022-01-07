
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int osb_lock; } ;
struct ocfs2_refcount_tree {int dummy; } ;


 int ocfs2_erase_refcount_tree_from_list_no_lock (struct ocfs2_super*,struct ocfs2_refcount_tree*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ocfs2_erase_refcount_tree_from_list(struct ocfs2_super *osb,
     struct ocfs2_refcount_tree *tree)
{
 spin_lock(&osb->osb_lock);
 ocfs2_erase_refcount_tree_from_list_no_lock(osb, tree);
 spin_unlock(&osb->osb_lock);
}
