
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int proc_create (char*,int ,int *,int *) ;
 int proc_mkdir (char*,int *) ;
 int remove_proc_entry (char*,int *) ;
 int xfs_stat_proc_fops ;

int
xfs_init_procfs(void)
{
 if (!proc_mkdir("fs/xfs", ((void*)0)))
  goto out;

 if (!proc_create("fs/xfs/stat", 0, ((void*)0),
    &xfs_stat_proc_fops))
  goto out_remove_entry;
 return 0;

 out_remove_entry:
 remove_proc_entry("fs/xfs", ((void*)0));
 out:
 return -ENOMEM;
}
