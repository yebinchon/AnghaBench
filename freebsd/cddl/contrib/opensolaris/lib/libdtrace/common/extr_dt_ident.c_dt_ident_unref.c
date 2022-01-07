
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ di_gen; int di_flags; } ;
typedef TYPE_2__ dt_ident_t ;
struct TYPE_7__ {TYPE_1__* pcb_hdl; } ;
struct TYPE_5__ {scalar_t__ dt_gen; } ;


 int DT_IDFLG_DECL ;
 int DT_IDFLG_MOD ;
 int DT_IDFLG_REF ;
 TYPE_3__* yypcb ;

int
dt_ident_unref(const dt_ident_t *idp)
{
 return (idp->di_gen == yypcb->pcb_hdl->dt_gen &&
     (idp->di_flags & (DT_IDFLG_REF|DT_IDFLG_MOD|DT_IDFLG_DECL)) == 0);
}
