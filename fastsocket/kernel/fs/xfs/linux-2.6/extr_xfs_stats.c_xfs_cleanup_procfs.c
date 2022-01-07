
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int remove_proc_entry (char*,int *) ;

void
xfs_cleanup_procfs(void)
{
 remove_proc_entry("fs/xfs/stat", ((void*)0));
 remove_proc_entry("fs/xfs", ((void*)0));
}
