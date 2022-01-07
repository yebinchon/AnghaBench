
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ dn_kind; scalar_t__ dn_ctfp; scalar_t__ dn_type; TYPE_1__* dn_ident; } ;
typedef TYPE_2__ dt_node_t ;
struct TYPE_8__ {TYPE_2__* din_root; } ;
typedef TYPE_3__ dt_idnode_t ;
struct TYPE_9__ {int pcb_hdl; } ;
struct TYPE_6__ {int di_flags; TYPE_3__* di_iarg; } ;


 scalar_t__ DT_DYN_CTFP (int ) ;
 scalar_t__ DT_DYN_TYPE (int ) ;
 int DT_IDFLG_INLINE ;
 scalar_t__ DT_NODE_VAR ;
 TYPE_4__* yypcb ;

int
dt_node_is_dynamic(const dt_node_t *dnp)
{
 if (dnp->dn_kind == DT_NODE_VAR &&
     (dnp->dn_ident->di_flags & DT_IDFLG_INLINE)) {
  const dt_idnode_t *inp = dnp->dn_ident->di_iarg;
  return (inp->din_root ? dt_node_is_dynamic(inp->din_root) : 0);
 }

 return (dnp->dn_ctfp == DT_DYN_CTFP(yypcb->pcb_hdl) &&
     dnp->dn_type == DT_DYN_TYPE(yypcb->pcb_hdl));
}
