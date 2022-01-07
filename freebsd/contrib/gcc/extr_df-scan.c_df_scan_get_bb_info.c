
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct df_scan_bb_info {int dummy; } ;
struct dataflow {unsigned int block_info_size; scalar_t__* block_info; } ;


 int gcc_assert (int) ;

struct df_scan_bb_info *
df_scan_get_bb_info (struct dataflow *dflow, unsigned int index)
{
  gcc_assert (index < dflow->block_info_size);
  return (struct df_scan_bb_info *) dflow->block_info[index];
}
