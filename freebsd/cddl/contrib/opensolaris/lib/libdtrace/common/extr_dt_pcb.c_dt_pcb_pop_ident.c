
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dt_gen; } ;
typedef TYPE_1__ dtrace_hdl_t ;
typedef int dt_idhash_t ;
struct TYPE_6__ {scalar_t__ di_gen; } ;
typedef TYPE_2__ dt_ident_t ;


 int dt_idhash_delete (int *,TYPE_2__*) ;

__attribute__((used)) static int
dt_pcb_pop_ident(dt_idhash_t *dhp, dt_ident_t *idp, void *arg)
{
 dtrace_hdl_t *dtp = arg;

 if (idp->di_gen == dtp->dt_gen)
  dt_idhash_delete(dhp, idp);

 return (0);
}
