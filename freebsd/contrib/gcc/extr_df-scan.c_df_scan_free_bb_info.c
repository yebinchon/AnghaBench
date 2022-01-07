
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct df_scan_bb_info {int dummy; } ;
struct dataflow {int block_pool; } ;
typedef TYPE_1__* basic_block ;
struct TYPE_3__ {int index; } ;


 int df_bb_refs_delete (struct dataflow*,int ) ;
 int pool_free (int ,struct df_scan_bb_info*) ;

__attribute__((used)) static void
df_scan_free_bb_info (struct dataflow *dflow, basic_block bb, void *vbb_info)
{
  struct df_scan_bb_info *bb_info = (struct df_scan_bb_info *) vbb_info;
  if (bb_info)
    {
      df_bb_refs_delete (dflow, bb->index);
      pool_free (dflow->block_pool, bb_info);
    }
}
