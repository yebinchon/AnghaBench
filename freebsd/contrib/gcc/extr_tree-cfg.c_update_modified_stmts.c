
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_stmt_iterator ;
typedef int tree ;


 scalar_t__ STATEMENT_LIST ;
 scalar_t__ TREE_CODE (int ) ;
 int tsi_end_p (int ) ;
 int tsi_next (int *) ;
 int tsi_start (int ) ;
 int tsi_stmt (int ) ;
 int update_stmt_if_modified (int ) ;

__attribute__((used)) static inline void
update_modified_stmts (tree t)
{
  if (TREE_CODE (t) == STATEMENT_LIST)
    {
      tree_stmt_iterator i;
      tree stmt;
      for (i = tsi_start (t); !tsi_end_p (i); tsi_next (&i))
        {
   stmt = tsi_stmt (i);
   update_stmt_if_modified (stmt);
 }
    }
  else
    update_stmt_if_modified (t);
}
