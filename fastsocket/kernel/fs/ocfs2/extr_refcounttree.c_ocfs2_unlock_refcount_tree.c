
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_refcount_tree {int rf_sem; } ;


 int ocfs2_refcount_tree_put (struct ocfs2_refcount_tree*) ;
 int ocfs2_refcount_unlock (struct ocfs2_refcount_tree*,int) ;
 int up_read (int *) ;
 int up_write (int *) ;

void ocfs2_unlock_refcount_tree(struct ocfs2_super *osb,
    struct ocfs2_refcount_tree *tree, int rw)
{
 if (rw)
  up_write(&tree->rf_sem);
 else
  up_read(&tree->rf_sem);

 ocfs2_refcount_unlock(tree, rw);
 ocfs2_refcount_tree_put(tree);
}
