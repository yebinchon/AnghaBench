
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int edge ;
struct TYPE_2__ {int (* tidy_fallthru_edge ) (int ) ;} ;


 TYPE_1__* cfg_hooks ;
 int stub1 (int ) ;

void
tidy_fallthru_edge (edge e)
{
  if (cfg_hooks->tidy_fallthru_edge)
    cfg_hooks->tidy_fallthru_edge (e);
}
