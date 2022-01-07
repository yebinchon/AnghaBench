
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cp_switch {struct cp_switch* next; int cases; int switch_stmt; } ;
typedef int location_t ;


 scalar_t__ EXPR_HAS_LOCATION (int ) ;
 int EXPR_LOCATION (int ) ;
 int SWITCH_STMT_COND (int ) ;
 int SWITCH_STMT_TYPE (int ) ;
 int c_do_switch_warnings (int ,int ,int ,int ) ;
 int free (struct cp_switch*) ;
 int input_location ;
 int processing_template_decl ;
 int splay_tree_delete (int ) ;
 struct cp_switch* switch_stack ;

void
pop_switch (void)
{
  struct cp_switch *cs = switch_stack;
  location_t switch_location;


  if (EXPR_HAS_LOCATION (cs->switch_stmt))
    switch_location = EXPR_LOCATION (cs->switch_stmt);
  else
    switch_location = input_location;
  if (!processing_template_decl)
    c_do_switch_warnings (cs->cases, switch_location,
     SWITCH_STMT_TYPE (cs->switch_stmt),
     SWITCH_STMT_COND (cs->switch_stmt));

  splay_tree_delete (cs->cases);
  switch_stack = switch_stack->next;
  free (cs);
}
