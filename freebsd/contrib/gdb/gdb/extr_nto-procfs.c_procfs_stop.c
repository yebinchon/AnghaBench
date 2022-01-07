
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DCMD_PROC_STOP ;
 int ctl_fd ;
 int devctl (int ,int ,int *,int ,int ) ;

__attribute__((used)) static void
procfs_stop (void)
{
  devctl (ctl_fd, DCMD_PROC_STOP, ((void*)0), 0, 0);
}
