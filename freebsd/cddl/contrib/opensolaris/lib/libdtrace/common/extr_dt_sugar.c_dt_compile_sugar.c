
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {void* dt_has_sugar; } ;
typedef TYPE_1__ dtrace_hdl_t ;
struct TYPE_16__ {scalar_t__ dtsp_num_ifs; scalar_t__ dtsp_num_conditions; TYPE_3__* dtsp_clause_list; int dtsp_pdescs; TYPE_1__* dtsp_dtp; int member_0; } ;
typedef TYPE_2__ dt_sugar_parse_t ;
struct TYPE_17__ {int * dn_list; int * dn_acts; int * dn_pred; int dn_pdescs; } ;
typedef TYPE_3__ dt_node_t ;


 void* B_TRUE ;
 int dt_node_clause (int ,int *,int *) ;
 int dt_sugar_append_clause (TYPE_2__*,int ) ;
 int dt_sugar_makeerrorclause () ;
 int dt_sugar_new_basic_block (TYPE_2__*,int,int *) ;
 int dt_sugar_new_clearerror_clause (TYPE_2__*) ;
 int dt_sugar_new_condition (TYPE_2__*,int *,int) ;
 int dt_sugar_prepend_clause (TYPE_2__*,int ) ;
 int dt_sugar_visit_all (TYPE_2__*,TYPE_3__*) ;
 int dt_sugar_visit_stmts (TYPE_2__*,int *,int) ;
 void* yyintdecimal ;
 scalar_t__ yyintprefix ;
 char* yyintsuffix ;

dt_node_t *
dt_compile_sugar(dtrace_hdl_t *dtp, dt_node_t *clause)
{
 dt_sugar_parse_t dp = { 0 };
 int condid = 0;

 dp.dtsp_dtp = dtp;
 dp.dtsp_pdescs = clause->dn_pdescs;


 yyintdecimal = B_TRUE;
 yyintsuffix[0] = '\0';
 yyintprefix = 0;

 dt_sugar_visit_all(&dp, clause);

 if (dp.dtsp_num_ifs == 0 && dp.dtsp_num_conditions == 0) {







  dt_sugar_append_clause(&dp, dt_node_clause(clause->dn_pdescs,
      clause->dn_pred, clause->dn_acts));
 } else {
  if (clause->dn_pred != ((void*)0)) {
   condid = dt_sugar_new_condition(&dp,
       clause->dn_pred, condid);
  }

  if (clause->dn_acts == ((void*)0)) {






   dt_sugar_new_basic_block(&dp, condid, ((void*)0));
  } else {
   dt_sugar_visit_stmts(&dp, clause->dn_acts, condid);
  }
 }

 if (dp.dtsp_num_conditions != 0) {
  dt_sugar_prepend_clause(&dp,
      dt_sugar_new_clearerror_clause(&dp));
 }

 if (dp.dtsp_clause_list != ((void*)0) &&
     dp.dtsp_clause_list->dn_list != ((void*)0) && !dtp->dt_has_sugar) {
  dtp->dt_has_sugar = B_TRUE;
  dt_sugar_prepend_clause(&dp, dt_sugar_makeerrorclause());
 }
 return (dp.dtsp_clause_list);
}
