
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int dt_sugar_parse_t ;
struct TYPE_5__ {scalar_t__ dn_kind; struct TYPE_5__* dn_list; } ;
typedef TYPE_1__ dt_node_t ;


 scalar_t__ DT_NODE_IF ;
 int dt_sugar_do_if (int *,TYPE_1__*,int) ;
 int dt_sugar_new_basic_block (int *,int,TYPE_1__*) ;

__attribute__((used)) static void
dt_sugar_visit_stmts(dt_sugar_parse_t *dp, dt_node_t *stmts, int precondition)
{
 dt_node_t *stmt;
 dt_node_t *prev_stmt = ((void*)0);
 dt_node_t *next_stmt;
 dt_node_t *first_stmt_in_basic_block = ((void*)0);

 for (stmt = stmts; stmt != ((void*)0); stmt = next_stmt) {
  next_stmt = stmt->dn_list;

  if (stmt->dn_kind != DT_NODE_IF) {
   if (first_stmt_in_basic_block == ((void*)0))
    first_stmt_in_basic_block = stmt;
   prev_stmt = stmt;
   continue;
  }





  if (prev_stmt != ((void*)0))
   prev_stmt->dn_list = ((void*)0);




  if (first_stmt_in_basic_block != ((void*)0)) {
   dt_sugar_new_basic_block(dp, precondition,
       first_stmt_in_basic_block);
  }

  dt_sugar_do_if(dp, stmt, precondition);

  first_stmt_in_basic_block = ((void*)0);

  prev_stmt = stmt;
 }


 if (first_stmt_in_basic_block != ((void*)0)) {
  dt_sugar_new_basic_block(dp, precondition,
      first_stmt_in_basic_block);
 }
}
