
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_mqprio_qopt {int num_tc; int* prio_tc_map; unsigned int* offset; unsigned int* count; scalar_t__ hw; } ;
struct net_device {unsigned int real_num_tx_queues; } ;


 int EINVAL ;
 int TC_BITMASK ;
 int TC_MAX_QUEUE ;

__attribute__((used)) static int mqprio_parse_opt(struct net_device *dev, struct tc_mqprio_qopt *qopt)
{
 int i, j;


 if (qopt->num_tc > TC_MAX_QUEUE)
  return -EINVAL;


 for (i = 0; i < TC_BITMASK + 1; i++) {
  if (qopt->prio_tc_map[i] >= qopt->num_tc)
   return -EINVAL;
 }


 if (qopt->hw) {




  return -EINVAL;
 }

 for (i = 0; i < qopt->num_tc; i++) {
  unsigned int last = qopt->offset[i] + qopt->count[i];




  if (qopt->offset[i] >= dev->real_num_tx_queues ||
      !qopt->count[i] ||
      last > dev->real_num_tx_queues)
   return -EINVAL;


  for (j = i + 1; j < qopt->num_tc; j++) {
   if (last > qopt->offset[j])
    return -EINVAL;
  }
 }

 return 0;
}
