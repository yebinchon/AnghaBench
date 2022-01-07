
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int testing_map ;


 int BITS_TO_LONGS (int ) ;
 int ML_HEARTBEAT ;
 int O2NM_MAX_NODES ;
 int mlog (int ,char*,int ) ;
 int o2hb_fill_node_map_from_callback (unsigned long*,int) ;
 int test_bit (int ,unsigned long*) ;

int o2hb_check_node_heartbeating_from_callback(u8 node_num)
{
 unsigned long testing_map[BITS_TO_LONGS(O2NM_MAX_NODES)];

 o2hb_fill_node_map_from_callback(testing_map, sizeof(testing_map));
 if (!test_bit(node_num, testing_map)) {
  mlog(ML_HEARTBEAT,
       "node (%u) does not have heartbeating enabled.\n",
       node_num);
  return 0;
 }

 return 1;
}
