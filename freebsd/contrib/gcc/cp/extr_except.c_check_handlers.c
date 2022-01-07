
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_stmt_iterator ;
typedef int tree ;


 int EXPR_LOCUS (int ) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ STATEMENT_LIST ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_TYPE (int ) ;
 int check_handlers_1 (int ,int ) ;
 int pedwarn (char*,int ) ;
 scalar_t__ tsi_end_p (int ) ;
 int tsi_next (int *) ;
 int tsi_start (int ) ;
 int tsi_stmt (int ) ;

void
check_handlers (tree handlers)
{
  tree_stmt_iterator i;



  if (TREE_CODE (handlers) != STATEMENT_LIST)
    return;

  i = tsi_start (handlers);
  if (!tsi_end_p (i))
    while (1)
      {
 tree handler = tsi_stmt (i);
 tsi_next (&i);


 if (tsi_end_p (i))
   break;
 if (TREE_TYPE (handler) == NULL_TREE)
   pedwarn ("%H%<...%> handler must be the last handler for"
     " its try block", EXPR_LOCUS (handler));
 else
   check_handlers_1 (handler, i);
      }
}
