
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void df_scan_bb_info ;
struct dataflow {scalar_t__* block_info; } ;



__attribute__((used)) static void *
df_get_bb_info (struct dataflow *dflow, unsigned int index)
{
  return (struct df_scan_bb_info *) dflow->block_info[index];
}
