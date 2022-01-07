
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAN_PROC_RCVLIST_ALL ;
 int CAN_PROC_RCVLIST_EFF ;
 int CAN_PROC_RCVLIST_ERR ;
 int CAN_PROC_RCVLIST_FIL ;
 int CAN_PROC_RCVLIST_INV ;
 int CAN_PROC_RCVLIST_SFF ;
 int CAN_PROC_RESET_STATS ;
 int CAN_PROC_STATS ;
 int CAN_PROC_VERSION ;
 scalar_t__ can_dir ;
 int can_remove_proc_readentry (int ) ;
 int init_net ;
 scalar_t__ pde_rcvlist_all ;
 scalar_t__ pde_rcvlist_eff ;
 scalar_t__ pde_rcvlist_err ;
 scalar_t__ pde_rcvlist_fil ;
 scalar_t__ pde_rcvlist_inv ;
 scalar_t__ pde_rcvlist_sff ;
 scalar_t__ pde_reset_stats ;
 scalar_t__ pde_stats ;
 scalar_t__ pde_version ;
 int proc_net_remove (int *,char*) ;

void can_remove_proc(void)
{
 if (pde_version)
  can_remove_proc_readentry(CAN_PROC_VERSION);

 if (pde_stats)
  can_remove_proc_readentry(CAN_PROC_STATS);

 if (pde_reset_stats)
  can_remove_proc_readentry(CAN_PROC_RESET_STATS);

 if (pde_rcvlist_err)
  can_remove_proc_readentry(CAN_PROC_RCVLIST_ERR);

 if (pde_rcvlist_all)
  can_remove_proc_readentry(CAN_PROC_RCVLIST_ALL);

 if (pde_rcvlist_fil)
  can_remove_proc_readentry(CAN_PROC_RCVLIST_FIL);

 if (pde_rcvlist_inv)
  can_remove_proc_readentry(CAN_PROC_RCVLIST_INV);

 if (pde_rcvlist_eff)
  can_remove_proc_readentry(CAN_PROC_RCVLIST_EFF);

 if (pde_rcvlist_sff)
  can_remove_proc_readentry(CAN_PROC_RCVLIST_SFF);

 if (can_dir)
  proc_net_remove(&init_net, "can");
}
