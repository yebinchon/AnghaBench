
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct df_ur_bb_info {int dummy; } ;
struct dataflow {struct df_ur_bb_info** block_info; } ;



__attribute__((used)) static void
df_ur_set_bb_info (struct dataflow *dflow, unsigned int index,
     struct df_ur_bb_info *bb_info)
{
  dflow->block_info[index] = bb_info;
}
