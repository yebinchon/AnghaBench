
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dataflow {void** block_info; } ;



__attribute__((used)) static void
df_set_bb_info (struct dataflow *dflow, unsigned int index,
  void *bb_info)
{
  dflow->block_info[index] = bb_info;
}
