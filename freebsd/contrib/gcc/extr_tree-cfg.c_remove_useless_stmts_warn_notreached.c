
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_stmt_iterator ;
typedef int tree ;
typedef int location_t ;



 int BIND_EXPR_BLOCK (int ) ;
 int CATCH_BODY (int ) ;


 int COND_EXPR_COND (int ) ;
 int COND_EXPR_ELSE (int ) ;
 int COND_EXPR_THEN (int ) ;

 int EH_FILTER_FAILURE (int ) ;
 scalar_t__ EXPR_HAS_LOCATION (int ) ;
 int EXPR_LOCATION (int ) ;
 scalar_t__ LOCATION_LINE (int ) ;

 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;


 int tsi_end_p (int ) ;
 int tsi_next (int *) ;
 int tsi_start (int ) ;
 int tsi_stmt (int ) ;
 int warning (int ,char*,int *) ;

__attribute__((used)) static bool
remove_useless_stmts_warn_notreached (tree stmt)
{
  if (EXPR_HAS_LOCATION (stmt))
    {
      location_t loc = EXPR_LOCATION (stmt);
      if (LOCATION_LINE (loc) > 0)
 {
   warning (0, "%Hwill never be executed", &loc);
   return 1;
 }
    }

  switch (TREE_CODE (stmt))
    {
    case 130:
      {
 tree_stmt_iterator i;
 for (i = tsi_start (stmt); !tsi_end_p (i); tsi_next (&i))
   if (remove_useless_stmts_warn_notreached (tsi_stmt (i)))
     return 1;
      }
      break;

    case 132:
      if (remove_useless_stmts_warn_notreached (COND_EXPR_COND (stmt)))
 return 1;
      if (remove_useless_stmts_warn_notreached (COND_EXPR_THEN (stmt)))
 return 1;
      if (remove_useless_stmts_warn_notreached (COND_EXPR_ELSE (stmt)))
 return 1;
      break;

    case 128:
    case 129:
      if (remove_useless_stmts_warn_notreached (TREE_OPERAND (stmt, 0)))
 return 1;
      if (remove_useless_stmts_warn_notreached (TREE_OPERAND (stmt, 1)))
 return 1;
      break;

    case 133:
      return remove_useless_stmts_warn_notreached (CATCH_BODY (stmt));
    case 131:
      return remove_useless_stmts_warn_notreached (EH_FILTER_FAILURE (stmt));
    case 134:
      return remove_useless_stmts_warn_notreached (BIND_EXPR_BLOCK (stmt));

    default:

      break;
    }

  return 0;
}
