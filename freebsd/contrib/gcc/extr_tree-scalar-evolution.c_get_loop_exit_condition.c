
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct loop {TYPE_1__* single_exit; } ;
typedef TYPE_1__* edge ;
struct TYPE_2__ {int src; } ;


 int NULL_TREE ;
 int TDF_DETAILS ;
 scalar_t__ analyzable_condition (int ) ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int fprintf (scalar_t__,char*) ;
 int last_stmt (int ) ;
 int print_generic_expr (scalar_t__,int ,int ) ;

tree
get_loop_exit_condition (struct loop *loop)
{
  tree res = NULL_TREE;
  edge exit_edge = loop->single_exit;


  if (dump_file && (dump_flags & TDF_DETAILS))
    fprintf (dump_file, "(get_loop_exit_condition \n  ");

  if (exit_edge)
    {
      tree expr;

      expr = last_stmt (exit_edge->src);
      if (analyzable_condition (expr))
 res = expr;
    }

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      print_generic_expr (dump_file, res, 0);
      fprintf (dump_file, ")\n");
    }

  return res;
}
