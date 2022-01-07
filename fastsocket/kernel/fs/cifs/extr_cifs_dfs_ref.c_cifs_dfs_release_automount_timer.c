
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int cancel_delayed_work_sync (int *) ;
 int cifs_dfs_automount_list ;
 int cifs_dfs_automount_task ;
 int list_empty (int *) ;

void cifs_dfs_release_automount_timer(void)
{
 BUG_ON(!list_empty(&cifs_dfs_automount_list));
 cancel_delayed_work_sync(&cifs_dfs_automount_task);
}
