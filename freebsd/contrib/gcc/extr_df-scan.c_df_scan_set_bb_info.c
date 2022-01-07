
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct df_scan_bb_info {int dummy; } ;
struct dataflow {unsigned int block_info_size; void** block_info; } ;


 int gcc_assert (int) ;

__attribute__((used)) static void
df_scan_set_bb_info (struct dataflow *dflow, unsigned int index,
       struct df_scan_bb_info *bb_info)
{
  gcc_assert (index < dflow->block_info_size);
  dflow->block_info[index] = (void *) bb_info;
}
