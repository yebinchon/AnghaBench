
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {scalar_t__ ls_debug_all_dentry; scalar_t__ ls_debug_locks_dentry; scalar_t__ ls_debug_waiters_dentry; scalar_t__ ls_debug_rsb_dentry; } ;


 int debugfs_remove (scalar_t__) ;

void dlm_delete_debug_file(struct dlm_ls *ls)
{
 if (ls->ls_debug_rsb_dentry)
  debugfs_remove(ls->ls_debug_rsb_dentry);
 if (ls->ls_debug_waiters_dentry)
  debugfs_remove(ls->ls_debug_waiters_dentry);
 if (ls->ls_debug_locks_dentry)
  debugfs_remove(ls->ls_debug_locks_dentry);
 if (ls->ls_debug_all_dentry)
  debugfs_remove(ls->ls_debug_all_dentry);
}
