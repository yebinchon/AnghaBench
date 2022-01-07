
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {char* ls_name; void* ls_debug_waiters_dentry; void* ls_debug_all_dentry; void* ls_debug_locks_dentry; void* ls_debug_rsb_dentry; } ;
typedef int name ;


 int DLM_LOCKSPACE_LEN ;
 int ENOMEM ;
 int S_IFREG ;
 int S_IRUGO ;
 void* debugfs_create_file (char*,int,int ,struct dlm_ls*,int *) ;
 int dlm_delete_debug_file (struct dlm_ls*) ;
 int dlm_root ;
 int format1_fops ;
 int format2_fops ;
 int format3_fops ;
 int memset (char*,int ,int) ;
 int snprintf (char*,int,char*,char*) ;
 int waiters_fops ;

int dlm_create_debug_file(struct dlm_ls *ls)
{
 char name[DLM_LOCKSPACE_LEN+8];



 ls->ls_debug_rsb_dentry = debugfs_create_file(ls->ls_name,
            S_IFREG | S_IRUGO,
            dlm_root,
            ls,
            &format1_fops);
 if (!ls->ls_debug_rsb_dentry)
  goto fail;



 memset(name, 0, sizeof(name));
 snprintf(name, DLM_LOCKSPACE_LEN+8, "%s_locks", ls->ls_name);

 ls->ls_debug_locks_dentry = debugfs_create_file(name,
       S_IFREG | S_IRUGO,
       dlm_root,
       ls,
       &format2_fops);
 if (!ls->ls_debug_locks_dentry)
  goto fail;



 memset(name, 0, sizeof(name));
 snprintf(name, DLM_LOCKSPACE_LEN+8, "%s_all", ls->ls_name);

 ls->ls_debug_all_dentry = debugfs_create_file(name,
            S_IFREG | S_IRUGO,
            dlm_root,
            ls,
            &format3_fops);
 if (!ls->ls_debug_all_dentry)
  goto fail;

 memset(name, 0, sizeof(name));
 snprintf(name, DLM_LOCKSPACE_LEN+8, "%s_waiters", ls->ls_name);

 ls->ls_debug_waiters_dentry = debugfs_create_file(name,
         S_IFREG | S_IRUGO,
         dlm_root,
         ls,
         &waiters_fops);
 if (!ls->ls_debug_waiters_dentry)
  goto fail;

 return 0;

 fail:
 dlm_delete_debug_file(ls);
 return -ENOMEM;
}
