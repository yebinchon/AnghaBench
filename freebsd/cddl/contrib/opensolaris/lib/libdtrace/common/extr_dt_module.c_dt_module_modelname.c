
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * dm_ops; } ;
typedef TYPE_1__ dt_module_t ;


 int dt_modops_64 ;

const char *
dt_module_modelname(dt_module_t *dmp)
{
 if (dmp->dm_ops == &dt_modops_64)
  return ("64-bit");
 else
  return ("32-bit");
}
