
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {scalar_t__ stmt; } ;


 int EXPR_LOCUS (scalar_t__) ;
 scalar_t__ IS_EMPTY_STMT (scalar_t__) ;
 int OPT_Wextra ;
 scalar_t__ STATEMENT_LIST ;
 TYPE_1__* STATEMENT_LIST_TAIL (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ extra_warnings ;
 int warning (int ,char*,int ) ;

void
empty_body_warning (tree inner_then, tree inner_else)
{
  if (extra_warnings)
    {
      if (TREE_CODE (inner_then) == STATEMENT_LIST
   && STATEMENT_LIST_TAIL (inner_then))
 inner_then = STATEMENT_LIST_TAIL (inner_then)->stmt;

      if (inner_else && TREE_CODE (inner_else) == STATEMENT_LIST
   && STATEMENT_LIST_TAIL (inner_else))
 inner_else = STATEMENT_LIST_TAIL (inner_else)->stmt;

      if (IS_EMPTY_STMT (inner_then) && !inner_else)
 warning (OPT_Wextra, "%Hempty body in an if-statement",
   EXPR_LOCUS (inner_then));

      if (inner_else && IS_EMPTY_STMT (inner_else))
 warning (OPT_Wextra, "%Hempty body in an else-statement",
   EXPR_LOCUS (inner_else));
   }
}
