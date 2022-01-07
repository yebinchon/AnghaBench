
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ dtt_type; int dtt_ctfp; } ;
typedef TYPE_1__ dtrace_typeinfo_t ;
typedef int dtrace_hdl_t ;
typedef int dt_node_t ;
struct TYPE_7__ {scalar_t__ di_type; int di_ctfp; int di_name; scalar_t__ di_iarg; } ;
typedef TYPE_2__ dt_ident_t ;
struct TYPE_8__ {int * pcb_hdl; } ;


 int B_FALSE ;
 scalar_t__ CTF_ERR ;
 int D_UNKNOWN ;
 int dt_node_type_assign (int *,int ,scalar_t__,int ) ;
 int dt_type_lookup (scalar_t__,TYPE_1__*) ;
 int dtrace_errmsg (int *,int ) ;
 int dtrace_errno (int *) ;
 int xyerror (int ,char*,char const*,int ,int ) ;
 TYPE_3__* yypcb ;

__attribute__((used)) static void
dt_idcook_type(dt_node_t *dnp, dt_ident_t *idp, int argc, dt_node_t *args)
{
 if (idp->di_type == CTF_ERR) {
  dtrace_hdl_t *dtp = yypcb->pcb_hdl;
  dtrace_typeinfo_t dtt;

  if (dt_type_lookup(idp->di_iarg, &dtt) == -1) {
   xyerror(D_UNKNOWN,
       "failed to resolve type %s for identifier %s: %s\n",
       (const char *)idp->di_iarg, idp->di_name,
       dtrace_errmsg(dtp, dtrace_errno(dtp)));
  }

  idp->di_ctfp = dtt.dtt_ctfp;
  idp->di_type = dtt.dtt_type;
 }

 dt_node_type_assign(dnp, idp->di_ctfp, idp->di_type, B_FALSE);
}
