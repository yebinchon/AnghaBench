
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_lock_res {struct ocfs2_super* l_priv; } ;
struct ocfs2_refcount_tree {struct ocfs2_lock_res rf_lockres; } ;


 int DLM_LOCK_EX ;
 int DLM_LOCK_PR ;
 int ocfs2_cluster_unlock (struct ocfs2_super*,struct ocfs2_lock_res*,int) ;
 int ocfs2_mount_local (struct ocfs2_super*) ;

void ocfs2_refcount_unlock(struct ocfs2_refcount_tree *ref_tree, int ex)
{
 int level = ex ? DLM_LOCK_EX : DLM_LOCK_PR;
 struct ocfs2_lock_res *lockres = &ref_tree->rf_lockres;
 struct ocfs2_super *osb = lockres->l_priv;

 if (!ocfs2_mount_local(osb))
  ocfs2_cluster_unlock(osb, lockres, level);
}
