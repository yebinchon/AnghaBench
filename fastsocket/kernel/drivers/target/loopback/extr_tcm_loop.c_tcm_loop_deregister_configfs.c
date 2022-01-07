
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_debug (char*) ;
 int target_fabric_configfs_deregister (int *) ;
 int * tcm_loop_fabric_configfs ;

__attribute__((used)) static void tcm_loop_deregister_configfs(void)
{
 if (!tcm_loop_fabric_configfs)
  return;

 target_fabric_configfs_deregister(tcm_loop_fabric_configfs);
 tcm_loop_fabric_configfs = ((void*)0);
 pr_debug("TCM_LOOP[0] - Cleared"
    " tcm_loop_fabric_configfs\n");
}
