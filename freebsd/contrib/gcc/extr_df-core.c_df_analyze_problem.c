
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dataflow {TYPE_1__* problem; } ;
typedef int bitmap ;
struct TYPE_2__ {int (* finalize_fun ) (struct dataflow*,int ) ;int (* dataflow_fun ) (struct dataflow*,int ,int ,int*,int,int) ;int (* local_compute_fun ) (struct dataflow*,int ,int ) ;int (* alloc_fun ) (struct dataflow*,int ,int ) ;} ;


 int stub1 (struct dataflow*,int ,int ) ;
 int stub2 (struct dataflow*,int ,int ) ;
 int stub3 (struct dataflow*,int ,int ,int*,int,int) ;
 int stub4 (struct dataflow*,int ) ;

void
df_analyze_problem (struct dataflow *dflow,
      bitmap blocks_to_consider,
      bitmap blocks_to_init,
      bitmap blocks_to_scan,
      int *postorder, int n_blocks, bool single_pass)
{

  if (dflow->problem->alloc_fun)
    dflow->problem->alloc_fun (dflow, blocks_to_scan, blocks_to_init);





  if (dflow->problem->local_compute_fun)
    dflow->problem->local_compute_fun (dflow, blocks_to_consider, blocks_to_scan);


  if (dflow->problem->dataflow_fun)
    dflow->problem->dataflow_fun (dflow, blocks_to_consider, blocks_to_init,
      postorder, n_blocks, single_pass);


  if (dflow->problem->finalize_fun)
    dflow->problem->finalize_fun (dflow, blocks_to_consider);
}
