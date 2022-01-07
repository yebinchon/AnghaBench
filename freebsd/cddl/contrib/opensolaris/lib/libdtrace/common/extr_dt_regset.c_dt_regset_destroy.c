
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* dr_bitmap; } ;
typedef TYPE_1__ dt_regset_t ;


 int free (TYPE_1__*) ;

void
dt_regset_destroy(dt_regset_t *drp)
{
 free(drp->dr_bitmap);
 free(drp);
}
