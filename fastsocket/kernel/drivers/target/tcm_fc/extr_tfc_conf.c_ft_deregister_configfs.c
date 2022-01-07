
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * ft_configfs ;
 int target_fabric_configfs_deregister (int *) ;

void ft_deregister_configfs(void)
{
 if (!ft_configfs)
  return;
 target_fabric_configfs_deregister(ft_configfs);
 ft_configfs = ((void*)0);
}
