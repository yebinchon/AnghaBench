
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ dtt_ctfp; int dtt_flags; int dtt_type; } ;
typedef TYPE_3__ dtrace_typeinfo_t ;
struct TYPE_15__ {TYPE_2__* dt_ddefs; TYPE_1__* dt_cdefs; } ;
typedef TYPE_4__ dtrace_hdl_t ;
struct TYPE_16__ {char* dn_string; int dn_op; } ;
typedef TYPE_5__ dt_node_t ;
typedef int dt_decl_t ;
struct TYPE_17__ {int pcb_jmpbuf; TYPE_4__* pcb_hdl; } ;
struct TYPE_13__ {scalar_t__ dm_ctfp; } ;
struct TYPE_12__ {scalar_t__ dm_ctfp; } ;


 int DT_NODE_TYPE ;
 int DT_TOK_IDENT ;
 int EDT_COMPILER ;
 int _dtrace_defattr ;
 int _dtrace_typattr ;
 int dt_decl_free (int *) ;
 int * dt_decl_pop_param (char**) ;
 int dt_decl_type (int *,TYPE_3__*) ;
 TYPE_5__* dt_node_alloc (int ) ;
 int dt_node_attr_assign (TYPE_5__*,int ) ;
 int dt_node_type_assign (TYPE_5__*,scalar_t__,int ,int ) ;
 int free (char*) ;
 int longjmp (int ,int ) ;
 TYPE_6__* yypcb ;

dt_node_t *
dt_node_type(dt_decl_t *ddp)
{
 dtrace_hdl_t *dtp = yypcb->pcb_hdl;
 dtrace_typeinfo_t dtt;
 dt_node_t *dnp;
 char *name = ((void*)0);
 int err;





 if (ddp == ((void*)0))
  ddp = dt_decl_pop_param(&name);

 err = dt_decl_type(ddp, &dtt);
 dt_decl_free(ddp);

 if (err != 0) {
  free(name);
  longjmp(yypcb->pcb_jmpbuf, EDT_COMPILER);
 }

 dnp = dt_node_alloc(DT_NODE_TYPE);
 dnp->dn_op = DT_TOK_IDENT;
 dnp->dn_string = name;

 dt_node_type_assign(dnp, dtt.dtt_ctfp, dtt.dtt_type, dtt.dtt_flags);

 if (dtt.dtt_ctfp == dtp->dt_cdefs->dm_ctfp ||
     dtt.dtt_ctfp == dtp->dt_ddefs->dm_ctfp)
  dt_node_attr_assign(dnp, _dtrace_defattr);
 else
  dt_node_attr_assign(dnp, _dtrace_typattr);

 return (dnp);
}
