
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dn_ctfp; scalar_t__ dn_type; } ;
typedef TYPE_1__ dt_node_t ;
struct TYPE_5__ {int pcb_hdl; } ;


 scalar_t__ DT_STR_CTFP (int ) ;
 scalar_t__ DT_STR_TYPE (int ) ;
 TYPE_2__* yypcb ;

int
dt_node_is_string(const dt_node_t *dnp)
{
 return (dnp->dn_ctfp == DT_STR_CTFP(yypcb->pcb_hdl) &&
     dnp->dn_type == DT_STR_TYPE(yypcb->pcb_hdl));
}
