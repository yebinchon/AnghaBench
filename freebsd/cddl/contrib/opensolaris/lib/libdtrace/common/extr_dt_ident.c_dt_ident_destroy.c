
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* di_name; TYPE_1__* di_ops; } ;
typedef TYPE_2__ dt_ident_t ;
struct TYPE_6__ {int (* di_dtor ) (TYPE_2__*) ;} ;


 int free (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

void
dt_ident_destroy(dt_ident_t *idp)
{
 idp->di_ops->di_dtor(idp);
 free(idp->di_name);
 free(idp);
}
