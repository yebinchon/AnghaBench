
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* di_ops; } ;
typedef TYPE_2__ dt_ident_t ;
struct TYPE_7__ {size_t (* di_size ) (TYPE_2__*) ;} ;


 TYPE_2__* dt_ident_resolve (TYPE_2__*) ;
 size_t stub1 (TYPE_2__*) ;

size_t
dt_ident_size(dt_ident_t *idp)
{
 idp = dt_ident_resolve(idp);
 return (idp->di_ops->di_size(idp));
}
