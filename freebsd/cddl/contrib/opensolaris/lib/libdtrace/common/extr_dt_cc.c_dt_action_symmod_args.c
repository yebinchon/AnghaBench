
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int dtrace_hdl_t ;
typedef scalar_t__ dtrace_actkind_t ;
struct TYPE_6__ {TYPE_3__* dtad_difo; scalar_t__ dtad_kind; } ;
typedef TYPE_2__ dtrace_actdesc_t ;
typedef int dt_node_t ;
struct TYPE_5__ {int dtdt_size; } ;
struct TYPE_7__ {TYPE_1__ dtdo_rtype; } ;


 scalar_t__ DTRACEACT_MOD ;
 scalar_t__ DTRACEACT_SYM ;
 scalar_t__ DTRACEACT_UADDR ;
 scalar_t__ DTRACEACT_UMOD ;
 scalar_t__ DTRACEACT_USYM ;
 int assert (int) ;
 TYPE_3__* dt_as (int ) ;
 int dt_cg (int ,int *) ;
 int yypcb ;

__attribute__((used)) static void
dt_action_symmod_args(dtrace_hdl_t *dtp, dtrace_actdesc_t *ap,
    dt_node_t *dnp, dtrace_actkind_t kind)
{
 assert(kind == DTRACEACT_SYM || kind == DTRACEACT_MOD ||
     kind == DTRACEACT_USYM || kind == DTRACEACT_UMOD ||
     kind == DTRACEACT_UADDR);

 dt_cg(yypcb, dnp);
 ap->dtad_difo = dt_as(yypcb);
 ap->dtad_kind = kind;
 ap->dtad_difo->dtdo_rtype.dtdt_size = sizeof (uint64_t);
}
