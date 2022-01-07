
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_refcount_tree {int rf_sem; } ;


 int down_read (int *) ;
 int down_write (int *) ;
 int mlog_errno (int) ;
 int ocfs2_refcount_lock (struct ocfs2_refcount_tree*,int) ;

__attribute__((used)) static int __ocfs2_lock_refcount_tree(struct ocfs2_super *osb,
          struct ocfs2_refcount_tree *tree, int rw)
{
 int ret;

 ret = ocfs2_refcount_lock(tree, rw);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 if (rw)
  down_write(&tree->rf_sem);
 else
  down_read(&tree->rf_sem);

out:
 return ret;
}
