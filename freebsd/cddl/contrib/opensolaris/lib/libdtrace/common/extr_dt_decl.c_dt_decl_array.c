
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {TYPE_3__* ds_decl; } ;
typedef TYPE_1__ dt_scope_t ;
struct TYPE_14__ {scalar_t__ dn_kind; scalar_t__ dn_value; } ;
typedef TYPE_2__ dt_node_t ;
struct TYPE_15__ {scalar_t__ dd_kind; TYPE_2__* dd_node; int * dd_name; struct TYPE_15__* dd_next; } ;
typedef TYPE_3__ dt_decl_t ;
struct TYPE_16__ {TYPE_1__ pcb_dstack; } ;


 scalar_t__ CTF_K_ARRAY ;
 int DT_DP_ANON ;
 int DT_IDFLG_REF ;
 scalar_t__ DT_NODE_TYPE ;
 int D_DECL_ARRBIG ;
 int D_DECL_ARRSUB ;
 int D_DECL_DYNOBJ ;
 int D_DECL_VOIDOBJ ;
 scalar_t__ UINT_MAX ;
 int dt_decl_alloc (scalar_t__,int *) ;
 int dt_decl_prototype (TYPE_2__*,TYPE_2__*,char*,int ) ;
 TYPE_3__* dt_decl_push (int ) ;
 TYPE_2__* dt_node_cook (TYPE_2__*,int ) ;
 scalar_t__ dt_node_is_posconst (TYPE_2__*) ;
 scalar_t__ strcmp (int *,char*) ;
 int xyerror (int ,char*) ;
 TYPE_4__* yypcb ;

dt_decl_t *
dt_decl_array(dt_node_t *dnp)
{
 dt_decl_t *ddp = dt_decl_push(dt_decl_alloc(CTF_K_ARRAY, ((void*)0)));
 dt_scope_t *dsp = &yypcb->pcb_dstack;
 dt_decl_t *ndp = ddp;







 while (ndp->dd_next != ((void*)0) && ndp->dd_next->dd_kind == CTF_K_ARRAY)
  ndp = ndp->dd_next;

 if (ndp != ddp) {
  if (dnp != ((void*)0) && dnp->dn_kind == DT_NODE_TYPE) {
   xyerror(D_DECL_DYNOBJ,
       "cannot declare array of associative arrays\n");
  }
  dsp->ds_decl = ddp->dd_next;
  ddp->dd_next = ndp->dd_next;
  ndp->dd_next = ddp;
 }

 if (ddp->dd_next->dd_name != ((void*)0) &&
     strcmp(ddp->dd_next->dd_name, "void") == 0)
  xyerror(D_DECL_VOIDOBJ, "cannot declare array of void\n");

 if (dnp != ((void*)0) && dnp->dn_kind != DT_NODE_TYPE) {
  dnp = ddp->dd_node = dt_node_cook(dnp, DT_IDFLG_REF);

  if (dt_node_is_posconst(dnp) == 0) {
   xyerror(D_DECL_ARRSUB, "positive integral constant "
       "expression or tuple signature expected as "
       "array declaration subscript\n");
  }

  if (dnp->dn_value > UINT_MAX)
   xyerror(D_DECL_ARRBIG, "array dimension too big\n");

 } else if (dnp != ((void*)0)) {
  ddp->dd_node = dnp;
  (void) dt_decl_prototype(dnp, dnp, "array", DT_DP_ANON);
 }

 return (ddp);
}
