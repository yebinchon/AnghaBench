
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uchar_t ;
struct TYPE_4__ {int dn_kind; int dn_list; int * dn_provname; int dn_probes; struct TYPE_4__* dn_membexpr; int * dn_membname; int dn_acts; int dn_pdescs; int * dn_locals; struct TYPE_4__* dn_pred; int * dn_desc; int * dn_spec; int dn_aggtup; struct TYPE_4__* dn_aggfun; struct TYPE_4__* dn_expr; struct TYPE_4__* dn_right; struct TYPE_4__* dn_left; struct TYPE_4__* dn_child; int dn_args; TYPE_3__* dn_ident; int * dn_string; } ;
typedef TYPE_1__ dt_node_t ;
struct TYPE_5__ {int di_flags; } ;


 int DT_IDFLG_ORPHAN ;




 int DT_NODE_FREE ;
 int dt_ident_destroy (TYPE_3__*) ;
 int dt_idhash_destroy (int *) ;
 int dt_node_list_free (int *) ;
 int free (int *) ;

void
dt_node_free(dt_node_t *dnp)
{
 uchar_t kind = dnp->dn_kind;

 dnp->dn_kind = DT_NODE_FREE;

 switch (kind) {
 case 130:
 case 139:
 case 129:
  free(dnp->dn_string);
  dnp->dn_string = ((void*)0);
  break;

 case 128:
 case 140:
 case 133:
  if (dnp->dn_ident != ((void*)0)) {
   if (dnp->dn_ident->di_flags & DT_IDFLG_ORPHAN)
    dt_ident_destroy(dnp->dn_ident);
   dnp->dn_ident = ((void*)0);
  }
  dt_node_list_free(&dnp->dn_args);
  break;

 case 137:
  if (dnp->dn_child != ((void*)0)) {
   dt_node_free(dnp->dn_child);
   dnp->dn_child = ((void*)0);
  }
  break;

 case 135:
  if (dnp->dn_expr != ((void*)0)) {
   dt_node_free(dnp->dn_expr);
   dnp->dn_expr = ((void*)0);
  }

 case 136:
  if (dnp->dn_left != ((void*)0)) {
   dt_node_free(dnp->dn_left);
   dnp->dn_left = ((void*)0);
  }
  if (dnp->dn_right != ((void*)0)) {
   dt_node_free(dnp->dn_right);
   dnp->dn_right = ((void*)0);
  }
  break;

 case 142:
 case 141:
  if (dnp->dn_expr != ((void*)0)) {
   dt_node_free(dnp->dn_expr);
   dnp->dn_expr = ((void*)0);
  }
  break;

 case 144:
  if (dnp->dn_aggfun != ((void*)0)) {
   dt_node_free(dnp->dn_aggfun);
   dnp->dn_aggfun = ((void*)0);
  }
  dt_node_list_free(&dnp->dn_aggtup);
  break;

 case 134:
  free(dnp->dn_spec);
  dnp->dn_spec = ((void*)0);
  free(dnp->dn_desc);
  dnp->dn_desc = ((void*)0);
  break;

 case 143:
  if (dnp->dn_pred != ((void*)0))
   dt_node_free(dnp->dn_pred);
  if (dnp->dn_locals != ((void*)0))
   dt_idhash_destroy(dnp->dn_locals);
  dt_node_list_free(&dnp->dn_pdescs);
  dt_node_list_free(&dnp->dn_acts);
  break;

 case 138:
  free(dnp->dn_membname);
  dnp->dn_membname = ((void*)0);
  if (dnp->dn_membexpr != ((void*)0)) {
   dt_node_free(dnp->dn_membexpr);
   dnp->dn_membexpr = ((void*)0);
  }
  break;

 case 131:
  dt_node_list_free(&dnp->dn_probes);
  free(dnp->dn_provname);
  dnp->dn_provname = ((void*)0);
  break;

 case 132:
  dt_node_list_free(&dnp->dn_list);
  break;
 }
}
