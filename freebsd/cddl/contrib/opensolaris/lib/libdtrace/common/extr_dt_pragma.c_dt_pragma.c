
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct dt_pragmadesc {char* dpd_name; int dpd_kind; int (* dpd_func ) (char*,TYPE_1__*) ;} ;
struct TYPE_6__ {scalar_t__ dn_kind; char* dn_string; struct TYPE_6__* dn_list; } ;
typedef TYPE_1__ dt_node_t ;


 scalar_t__ DT_NODE_IDENT ;
 scalar_t__ DT_NODE_INT ;



 int D_PRAGCTL_INVAL ;
 int D_PRAGMA_INVAL ;
 int dt_node_list_free (TYPE_1__**) ;
 int dt_pragma_line (char*,TYPE_1__*) ;
 struct dt_pragmadesc* dt_pragmas ;
 scalar_t__ strcmp (char*,char*) ;
 int stub1 (char*,TYPE_1__*) ;
 int xyerror (int ,char*,...) ;
 int yylineno ;

void
dt_pragma(dt_node_t *pnp)
{
 const struct dt_pragmadesc *dpd;
 dt_node_t *dnp;
 int kind = 129;

 for (dnp = pnp; dnp != ((void*)0); dnp = dnp->dn_list) {
  if (dnp->dn_kind == DT_NODE_INT) {
   dt_pragma_line("line", dnp);
   break;
  }

  if (dnp->dn_kind != DT_NODE_IDENT)
   xyerror(D_PRAGCTL_INVAL, "invalid control directive\n");

  if (kind == 129 &&
      strcmp(dnp->dn_string, "pragma") == 0) {
   kind = 128;
   continue;
  }

  if (kind == 128 &&
      strcmp(dnp->dn_string, "D") == 0) {
   kind = 130;
   continue;
  }

  for (dpd = dt_pragmas; dpd->dpd_name != ((void*)0); dpd++) {
   if (dpd->dpd_kind <= kind &&
       strcmp(dpd->dpd_name, dnp->dn_string) == 0)
    break;
  }

  yylineno--;

  if (dpd->dpd_name != ((void*)0)) {
   dpd->dpd_func(dpd->dpd_name, dnp->dn_list);
   yylineno++;
   break;
  }

  switch (kind) {
  case 129:
   xyerror(D_PRAGCTL_INVAL, "invalid control directive: "
       "#%s\n", dnp->dn_string);

  case 128:
   break;
  case 130:
  default:
   xyerror(D_PRAGMA_INVAL, "invalid D pragma: %s\n",
       dnp->dn_string);
  }

  yylineno++;
  break;
 }

 dt_node_list_free(&pnp);
}
