
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int dtsp_num_ifs; } ;
typedef TYPE_2__ dt_sugar_parse_t ;
struct TYPE_10__ {int dn_kind; struct TYPE_10__* dn_list; struct TYPE_10__* dn_alternate_body; struct TYPE_10__* dn_body; struct TYPE_10__* dn_conditional; struct TYPE_10__* dn_probes; struct TYPE_10__* dn_members; struct TYPE_10__* dn_membexpr; TYPE_1__* dn_ident; struct TYPE_10__* dn_acts; struct TYPE_10__* dn_pred; struct TYPE_10__* dn_pdescs; struct TYPE_10__* dn_aggfun; struct TYPE_10__* dn_aggtup; struct TYPE_10__* dn_expr; struct TYPE_10__* dn_right; struct TYPE_10__* dn_left; int dn_op; struct TYPE_10__* dn_child; struct TYPE_10__* dn_args; } ;
typedef TYPE_3__ dt_node_t ;
struct TYPE_11__ {TYPE_3__* din_root; } ;
typedef TYPE_4__ dt_idnode_t ;
struct TYPE_8__ {TYPE_4__* di_iarg; } ;
 int DT_TOK_LBRAC ;
 int D_UNKNOWN ;
 int dnerror (TYPE_3__*,int ,char*,void*,int) ;

__attribute__((used)) static void
dt_sugar_visit_all(dt_sugar_parse_t *dp, dt_node_t *dnp)
{
 dt_node_t *arg;

 switch (dnp->dn_kind) {
 case 145:
 case 140:
 case 131:
 case 130:
 case 129:
 case 134:
 case 135:
 case 143:
  break;

 case 144:
  for (arg = dnp->dn_args; arg != ((void*)0); arg = arg->dn_list)
   dt_sugar_visit_all(dp, arg);
  break;

 case 138:
  dt_sugar_visit_all(dp, dnp->dn_child);
  break;

 case 137:
  dt_sugar_visit_all(dp, dnp->dn_left);
  dt_sugar_visit_all(dp, dnp->dn_right);
  if (dnp->dn_op == DT_TOK_LBRAC) {
   dt_node_t *ln = dnp->dn_right;
   while (ln->dn_list != ((void*)0)) {
    dt_sugar_visit_all(dp, ln->dn_list);
    ln = ln->dn_list;
   }
  }
  break;

 case 136:
  dt_sugar_visit_all(dp, dnp->dn_expr);
  dt_sugar_visit_all(dp, dnp->dn_left);
  dt_sugar_visit_all(dp, dnp->dn_right);
  break;

 case 147:
 case 146:
  dt_sugar_visit_all(dp, dnp->dn_expr);
  break;

 case 149:
  for (arg = dnp->dn_aggtup; arg != ((void*)0); arg = arg->dn_list)
   dt_sugar_visit_all(dp, arg);

  if (dnp->dn_aggfun)
   dt_sugar_visit_all(dp, dnp->dn_aggfun);
  break;

 case 148:
  for (arg = dnp->dn_pdescs; arg != ((void*)0); arg = arg->dn_list)
   dt_sugar_visit_all(dp, arg);

  if (dnp->dn_pred != ((void*)0))
   dt_sugar_visit_all(dp, dnp->dn_pred);

  for (arg = dnp->dn_acts; arg != ((void*)0); arg = arg->dn_list)
   dt_sugar_visit_all(dp, arg);
  break;

 case 141: {
  const dt_idnode_t *inp = dnp->dn_ident->di_iarg;

  dt_sugar_visit_all(dp, inp->din_root);
  break;
 }
 case 139:
  if (dnp->dn_membexpr)
   dt_sugar_visit_all(dp, dnp->dn_membexpr);
  break;

 case 128:
  for (arg = dnp->dn_members; arg != ((void*)0); arg = arg->dn_list)
   dt_sugar_visit_all(dp, arg);
  break;

 case 132:
  for (arg = dnp->dn_probes; arg != ((void*)0); arg = arg->dn_list)
   dt_sugar_visit_all(dp, arg);
  break;

 case 133:
  for (arg = dnp->dn_list; arg != ((void*)0); arg = arg->dn_list)
   dt_sugar_visit_all(dp, arg);
  break;

 case 142:
  dp->dtsp_num_ifs++;
  dt_sugar_visit_all(dp, dnp->dn_conditional);

  for (arg = dnp->dn_body; arg != ((void*)0); arg = arg->dn_list)
   dt_sugar_visit_all(dp, arg);
  for (arg = dnp->dn_alternate_body; arg != ((void*)0);
      arg = arg->dn_list)
   dt_sugar_visit_all(dp, arg);

  break;

 default:
  (void) dnerror(dnp, D_UNKNOWN, "bad node %p, kind %d\n",
      (void *)dnp, dnp->dn_kind);
 }
}
