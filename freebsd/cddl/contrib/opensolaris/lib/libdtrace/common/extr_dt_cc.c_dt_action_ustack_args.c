
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ int64_t ;
struct TYPE_11__ {scalar_t__* dt_options; } ;
typedef TYPE_2__ dtrace_hdl_t ;
struct TYPE_12__ {int dtad_arg; int dtad_kind; } ;
typedef TYPE_3__ dtrace_actdesc_t ;
struct TYPE_13__ {scalar_t__ dn_kind; int dn_flags; scalar_t__ dn_value; struct TYPE_13__* dn_list; TYPE_1__* dn_ident; struct TYPE_13__* dn_args; } ;
typedef TYPE_4__ dt_node_t ;
struct TYPE_10__ {scalar_t__ di_id; } ;


 int DTRACEACT_JSTACK ;
 int DTRACEACT_USTACK ;
 size_t DTRACEOPT_JSTACKFRAMES ;
 size_t DTRACEOPT_JSTACKSTRSIZE ;
 scalar_t__ DTRACEOPT_UNSET ;
 size_t DTRACEOPT_USTACKFRAMES ;
 int DTRACE_USTACK_ARG (scalar_t__,scalar_t__) ;
 scalar_t__ DT_ACT_JSTACK ;
 scalar_t__ DT_ACT_USTACK ;
 int DT_NF_SIGNED ;
 scalar_t__ DT_NODE_INT ;
 int D_USTACK_FRAMES ;
 int D_USTACK_PROTO ;
 int D_USTACK_STRSIZE ;
 int assert (int) ;
 int dnerror (TYPE_4__*,int ,char*) ;
 int dt_node_is_posconst (TYPE_4__*) ;

__attribute__((used)) static void
dt_action_ustack_args(dtrace_hdl_t *dtp, dtrace_actdesc_t *ap, dt_node_t *dnp)
{
 uint32_t nframes = 0;
 uint32_t strsize = 0;
 dt_node_t *arg0 = dnp->dn_args;
 dt_node_t *arg1 = arg0 != ((void*)0) ? arg0->dn_list : ((void*)0);

 assert(dnp->dn_ident->di_id == DT_ACT_JSTACK ||
     dnp->dn_ident->di_id == DT_ACT_USTACK);

 if (dnp->dn_ident->di_id == DT_ACT_JSTACK) {
  if (dtp->dt_options[DTRACEOPT_JSTACKFRAMES] != DTRACEOPT_UNSET)
   nframes = dtp->dt_options[DTRACEOPT_JSTACKFRAMES];

  if (dtp->dt_options[DTRACEOPT_JSTACKSTRSIZE] != DTRACEOPT_UNSET)
   strsize = dtp->dt_options[DTRACEOPT_JSTACKSTRSIZE];

  ap->dtad_kind = DTRACEACT_JSTACK;
 } else {
  assert(dnp->dn_ident->di_id == DT_ACT_USTACK);

  if (dtp->dt_options[DTRACEOPT_USTACKFRAMES] != DTRACEOPT_UNSET)
   nframes = dtp->dt_options[DTRACEOPT_USTACKFRAMES];

  ap->dtad_kind = DTRACEACT_USTACK;
 }

 if (arg0 != ((void*)0)) {
  if (!dt_node_is_posconst(arg0)) {
   dnerror(arg0, D_USTACK_FRAMES, "ustack( ) argument #1 "
       "must be a non-zero positive integer constant\n");
  }
  nframes = (uint32_t)arg0->dn_value;
 }

 if (arg1 != ((void*)0)) {
  if (arg1->dn_kind != DT_NODE_INT ||
      ((arg1->dn_flags & DT_NF_SIGNED) &&
      (int64_t)arg1->dn_value < 0)) {
   dnerror(arg1, D_USTACK_STRSIZE, "ustack( ) argument #2 "
       "must be a positive integer constant\n");
  }

  if (arg1->dn_list != ((void*)0)) {
   dnerror(arg1, D_USTACK_PROTO, "ustack( ) prototype "
       "mismatch: too many arguments\n");
  }

  strsize = (uint32_t)arg1->dn_value;
 }

 ap->dtad_arg = DTRACE_USTACK_ARG(nframes, strsize);
}
