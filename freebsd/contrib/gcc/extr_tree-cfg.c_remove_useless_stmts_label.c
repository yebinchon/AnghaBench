
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct rus_data {int has_label; int repeat; int * last_goto; } ;


 scalar_t__ DECL_NONLOCAL (scalar_t__) ;
 scalar_t__ GOTO_DESTINATION (int ) ;
 scalar_t__ LABEL_EXPR_LABEL (scalar_t__) ;
 int build_empty_stmt () ;

__attribute__((used)) static void
remove_useless_stmts_label (tree *stmt_p, struct rus_data *data)
{
  tree label = LABEL_EXPR_LABEL (*stmt_p);

  data->has_label = 1;


  if (DECL_NONLOCAL (label))
    data->last_goto = ((void*)0);

  else if (data->last_goto && GOTO_DESTINATION (*data->last_goto) == label)
    {
      *data->last_goto = build_empty_stmt ();
      data->repeat = 1;
    }


}
