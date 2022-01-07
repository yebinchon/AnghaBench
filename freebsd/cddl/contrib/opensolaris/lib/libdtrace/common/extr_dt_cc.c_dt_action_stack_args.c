
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__* dt_options; } ;
typedef TYPE_1__ dtrace_hdl_t ;
struct TYPE_10__ {scalar_t__ dtad_arg; int dtad_kind; } ;
typedef TYPE_2__ dtrace_actdesc_t ;
struct TYPE_11__ {scalar_t__ dn_value; int * dn_list; } ;
typedef TYPE_3__ dt_node_t ;


 int DTRACEACT_STACK ;
 size_t DTRACEOPT_STACKFRAMES ;
 scalar_t__ DTRACEOPT_UNSET ;
 int D_STACK_PROTO ;
 int D_STACK_SIZE ;
 int dnerror (TYPE_3__*,int ,char*) ;
 scalar_t__ dt_node_is_posconst (TYPE_3__*) ;

__attribute__((used)) static void
dt_action_stack_args(dtrace_hdl_t *dtp, dtrace_actdesc_t *ap, dt_node_t *arg0)
{
 ap->dtad_kind = DTRACEACT_STACK;

 if (dtp->dt_options[DTRACEOPT_STACKFRAMES] != DTRACEOPT_UNSET) {
  ap->dtad_arg = dtp->dt_options[DTRACEOPT_STACKFRAMES];
 } else {
  ap->dtad_arg = 0;
 }

 if (arg0 != ((void*)0)) {
  if (arg0->dn_list != ((void*)0)) {
   dnerror(arg0, D_STACK_PROTO, "stack( ) prototype "
       "mismatch: too many arguments\n");
  }

  if (dt_node_is_posconst(arg0) == 0) {
   dnerror(arg0, D_STACK_SIZE, "stack( ) size must be a "
       "non-zero positive integral constant expression\n");
  }

  ap->dtad_arg = arg0->dn_value;
 }
}
