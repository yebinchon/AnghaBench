
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct df_ref {int dummy; } ;
struct df {struct dataflow** problems_by_index; } ;
struct dataflow {int dummy; } ;
struct TYPE_2__ {struct df_ref* artificial_defs; } ;


 size_t DF_SCAN ;
 TYPE_1__* df_scan_get_bb_info (struct dataflow*,unsigned int) ;

struct df_ref *
df_get_artificial_defs (struct df *df, unsigned int bb_index)
{
  struct dataflow *dflow = df->problems_by_index[DF_SCAN];
  return df_scan_get_bb_info (dflow, bb_index)->artificial_defs;
}
