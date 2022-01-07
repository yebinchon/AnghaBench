
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cancel_delayed_work (int *) ;
 scalar_t__ list_empty (int *) ;
 int nfs_automount_list ;
 int nfs_automount_task ;

void nfs_release_automount_timer(void)
{
 if (list_empty(&nfs_automount_list))
  cancel_delayed_work(&nfs_automount_task);
}
