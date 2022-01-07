
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ushort_t ;
struct TYPE_6__ {int (* di_dtor ) (TYPE_2__*) ;} ;
typedef TYPE_1__ dt_idops_t ;
struct TYPE_7__ {int * di_data; void* di_iarg; TYPE_1__ const* di_ops; int di_kind; } ;
typedef TYPE_2__ dt_ident_t ;


 int stub1 (TYPE_2__*) ;

void
dt_ident_morph(dt_ident_t *idp, ushort_t kind,
    const dt_idops_t *ops, void *iarg)
{
 idp->di_ops->di_dtor(idp);
 idp->di_kind = kind;
 idp->di_ops = ops;
 idp->di_iarg = iarg;
 idp->di_data = ((void*)0);
}
