
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct df_urec_bb_info {int dummy; } ;
struct dataflow {scalar_t__* block_info; } ;



struct df_urec_bb_info *
df_urec_get_bb_info (struct dataflow *dflow, unsigned int index)
{
  return (struct df_urec_bb_info *) dflow->block_info[index];
}
