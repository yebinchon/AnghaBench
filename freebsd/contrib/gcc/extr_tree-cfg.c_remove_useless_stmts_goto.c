
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct rus_data {int may_branch; int * last_goto; } ;


 int GOTO_DESTINATION (int ) ;
 scalar_t__ LABEL_DECL ;
 scalar_t__ TREE_CODE (int ) ;

__attribute__((used)) static void
remove_useless_stmts_goto (tree *stmt_p, struct rus_data *data)
{
  tree dest = GOTO_DESTINATION (*stmt_p);

  data->may_branch = 1;
  data->last_goto = ((void*)0);


  if (TREE_CODE (dest) == LABEL_DECL)
    data->last_goto = stmt_p;
}
