
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;


 int * TREE_CHAIN (int *) ;
 int * TREE_VALUE (int *) ;
 int * build_empty_stmt () ;
 int error (char*) ;

__attribute__((used)) static bool
diagnose_sb_0 (tree *stmt_p, tree branch_ctx, tree label_ctx)
{
  bool exit_p = 1;

  if ((label_ctx ? TREE_VALUE (label_ctx) : ((void*)0)) == branch_ctx)
    return 0;




  if (branch_ctx == ((void*)0))
    exit_p = 0;
  else
    {
      while (label_ctx)
 {
   if (TREE_VALUE (label_ctx) == branch_ctx)
     {
       exit_p = 0;
       break;
     }
   label_ctx = TREE_CHAIN (label_ctx);
 }
    }

  if (exit_p)
    error ("invalid exit from OpenMP structured block");
  else
    error ("invalid entry to OpenMP structured block");

  *stmt_p = build_empty_stmt ();
  return 1;
}
