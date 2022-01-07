
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int dn_attr; int dn_type; int dn_ctfp; int dn_op; } ;
typedef TYPE_3__ dt_node_t ;
struct TYPE_10__ {TYPE_2__* pcb_hdl; } ;
struct TYPE_8__ {TYPE_1__* dt_cdefs; } ;
struct TYPE_7__ {int dm_ctfp; } ;


 int CTF_ERR ;
 int DT_NODE_TYPE ;
 int DT_TOK_IDENT ;
 int _dtrace_defattr ;
 TYPE_3__* dt_node_alloc (int ) ;
 TYPE_4__* yypcb ;

dt_node_t *
dt_node_vatype(void)
{
 dt_node_t *dnp = dt_node_alloc(DT_NODE_TYPE);

 dnp->dn_op = DT_TOK_IDENT;
 dnp->dn_ctfp = yypcb->pcb_hdl->dt_cdefs->dm_ctfp;
 dnp->dn_type = CTF_ERR;
 dnp->dn_attr = _dtrace_defattr;

 return (dnp);
}
