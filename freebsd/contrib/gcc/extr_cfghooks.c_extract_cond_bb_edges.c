
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int edge ;
typedef int basic_block ;
struct TYPE_2__ {int (* extract_cond_bb_edges ) (int ,int *,int *) ;} ;


 TYPE_1__* cfg_hooks ;
 int gcc_assert (int (*) (int ,int *,int *)) ;
 int stub1 (int ,int *,int *) ;

void
extract_cond_bb_edges (basic_block b, edge *e1, edge *e2)
{
  gcc_assert (cfg_hooks->extract_cond_bb_edges);
  cfg_hooks->extract_cond_bb_edges (b, e1, e2);
}
