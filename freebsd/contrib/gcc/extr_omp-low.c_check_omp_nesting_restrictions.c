
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct TYPE_3__ {int stmt; struct TYPE_3__* outer; } ;
typedef TYPE_1__ omp_context ;


 int OMP_CLAUSES (int ) ;
 int OMP_CLAUSE_ORDERED ;

 int OMP_CRITICAL_NAME (int ) ;






 int const TREE_CODE (int ) ;
 int * find_omp_clause (int ,int ) ;
 int warning (int ,char*) ;

__attribute__((used)) static void
check_omp_nesting_restrictions (tree t, omp_context *ctx)
{
  switch (TREE_CODE (t))
    {
    case 133:
    case 129:
    case 128:
      for (; ctx != ((void*)0); ctx = ctx->outer)
 switch (TREE_CODE (ctx->stmt))
   {
   case 133:
   case 129:
   case 128:
   case 131:
   case 132:
     warning (0, "work-sharing region may not be closely nested inside "
   "of work-sharing, critical, ordered or master region");
     return;
   case 130:
     return;
   default:
     break;
   }
      break;
    case 132:
      for (; ctx != ((void*)0); ctx = ctx->outer)
 switch (TREE_CODE (ctx->stmt))
   {
   case 133:
   case 129:
   case 128:
     warning (0, "master region may not be closely nested inside "
   "of work-sharing region");
     return;
   case 130:
     return;
   default:
     break;
   }
      break;
    case 131:
      for (; ctx != ((void*)0); ctx = ctx->outer)
 switch (TREE_CODE (ctx->stmt))
   {
   case 134:
     warning (0, "ordered region may not be closely nested inside "
   "of critical region");
     return;
   case 133:
     if (find_omp_clause (OMP_CLAUSES (ctx->stmt),
     OMP_CLAUSE_ORDERED) == ((void*)0))
       warning (0, "ordered region must be closely nested inside "
     "a loop region with an ordered clause");
     return;
   case 130:
     return;
   default:
     break;
   }
      break;
    case 134:
      for (; ctx != ((void*)0); ctx = ctx->outer)
 if (TREE_CODE (ctx->stmt) == 134
     && OMP_CRITICAL_NAME (t) == OMP_CRITICAL_NAME (ctx->stmt))
   {
     warning (0, "critical region may not be nested inside a critical "
   "region with the same name");
     return;
   }
      break;
    default:
      break;
    }
}
