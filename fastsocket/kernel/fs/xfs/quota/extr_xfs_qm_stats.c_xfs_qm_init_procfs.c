
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int proc_create (char*,int ,int *,int *) ;
 int xqm_proc_fops ;
 int xqmstat_proc_fops ;

void
xfs_qm_init_procfs(void)
{
 proc_create("fs/xfs/xqmstat", 0, ((void*)0), &xqmstat_proc_fops);
 proc_create("fs/xfs/xqm", 0, ((void*)0), &xqm_proc_fops);
}
