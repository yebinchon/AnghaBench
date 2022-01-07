
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {scalar_t__ blocked_vm; scalar_t__ blocked_stmt_expr; int orig_type; int switch_expr; int cases; } ;


 scalar_t__ NULL_TREE ;
 int SWITCH_COND (int ) ;
 scalar_t__ c_add_case_label (int ,int ,int ,scalar_t__,scalar_t__) ;
 TYPE_1__* c_switch_stack ;
 int error (char*) ;
 scalar_t__ error_mark_node ;

tree
do_case (tree low_value, tree high_value)
{
  tree label = NULL_TREE;

  if (c_switch_stack && !c_switch_stack->blocked_stmt_expr
      && !c_switch_stack->blocked_vm)
    {
      label = c_add_case_label (c_switch_stack->cases,
    SWITCH_COND (c_switch_stack->switch_expr),
    c_switch_stack->orig_type,
    low_value, high_value);
      if (label == error_mark_node)
 label = NULL_TREE;
    }
  else if (c_switch_stack && c_switch_stack->blocked_stmt_expr)
    {
      if (low_value)
 error ("case label in statement expression not containing "
        "enclosing switch statement");
      else
 error ("%<default%> label in statement expression not containing "
        "enclosing switch statement");
    }
  else if (c_switch_stack && c_switch_stack->blocked_vm)
    {
      if (low_value)
 error ("case label in scope of identifier with variably modified "
        "type not containing enclosing switch statement");
      else
 error ("%<default%> label in scope of identifier with variably "
        "modified type not containing enclosing switch statement");
    }
  else if (low_value)
    error ("case label not within a switch statement");
  else
    error ("%<default%> label not within a switch statement");

  return label;
}
