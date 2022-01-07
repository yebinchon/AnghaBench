
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int edge ;
struct TYPE_2__ {int (* execute_on_growing_pred ) (int ) ;} ;


 TYPE_1__* cfg_hooks ;
 int stub1 (int ) ;

void
execute_on_growing_pred (edge e)
{
  if (cfg_hooks->execute_on_growing_pred)
    cfg_hooks->execute_on_growing_pred (e);
}
