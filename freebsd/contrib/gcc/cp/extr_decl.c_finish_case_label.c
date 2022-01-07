
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct cp_binding_level {scalar_t__ kind; scalar_t__ more_cleanups_ok; struct cp_binding_level* level_chain; } ;
struct TYPE_2__ {int cases; int level; int switch_stmt; } ;


 int LABEL_DECL ;
 int NULL_TREE ;
 scalar_t__ SWITCH_STMT_COND (int ) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_LIST ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ add_stmt (int ) ;
 int build_case_label (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ build_decl (int ,int ,int ) ;
 scalar_t__ c_add_case_label (int ,scalar_t__,int ,scalar_t__,scalar_t__) ;
 int check_switch_goto (int ) ;
 struct cp_binding_level* current_binding_level ;
 scalar_t__ error_mark_node ;
 scalar_t__ processing_template_decl ;
 scalar_t__ sk_function_parms ;
 TYPE_1__* switch_stack ;

tree
finish_case_label (tree low_value, tree high_value)
{
  tree cond, r;
  struct cp_binding_level *p;

  if (processing_template_decl)
    {
      tree label;



      label = build_decl (LABEL_DECL, NULL_TREE, NULL_TREE);
      return add_stmt (build_case_label (low_value, high_value, label));
    }


  cond = SWITCH_STMT_COND (switch_stack->switch_stmt);
  if (cond && TREE_CODE (cond) == TREE_LIST)
    cond = TREE_VALUE (cond);

  if (!check_switch_goto (switch_stack->level))
    return error_mark_node;

  r = c_add_case_label (switch_stack->cases, cond, TREE_TYPE (cond),
   low_value, high_value);



  for (p = current_binding_level;
       p->kind != sk_function_parms;
       p = p->level_chain)
    p->more_cleanups_ok = 0;

  return r;
}
