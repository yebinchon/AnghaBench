
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * dx_locals; } ;
typedef TYPE_1__ dt_xlator_t ;



int
dt_xlator_dynamic(const dt_xlator_t *dxp)
{
 return (dxp->dx_locals == ((void*)0));
}
