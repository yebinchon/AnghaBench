
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int ML_HEARTBEAT ;
 scalar_t__ O2NM_MAX_NODES ;
 int mlog (int ,char*) ;
 int o2hb_check_node_heartbeating (scalar_t__) ;
 scalar_t__ o2nm_this_node () ;

int o2hb_check_local_node_heartbeating(void)
{
 u8 node_num;


 node_num = o2nm_this_node();
 if (node_num == O2NM_MAX_NODES) {
  mlog(ML_HEARTBEAT, "this node has not been configured.\n");
  return 0;
 }

 return o2hb_check_node_heartbeating(node_num);
}
