
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ OMP_DIRECTIVE_P (scalar_t__) ;
 int debug_generic_stmt (scalar_t__) ;
 int error (char*) ;
 int is_gimple_stmt (scalar_t__) ;
 scalar_t__ lookup_stmt_eh_region (scalar_t__) ;
 scalar_t__ tree_can_throw_internal (scalar_t__) ;
 int tree_could_throw_p (scalar_t__) ;
 int verify_expr ;
 scalar_t__ walk_tree (scalar_t__*,int ,int *,int *) ;

__attribute__((used)) static bool
verify_stmt (tree stmt, bool last_in_block)
{
  tree addr;

  if (OMP_DIRECTIVE_P (stmt))
    {






      return 0;
    }

  if (!is_gimple_stmt (stmt))
    {
      error ("is not a valid GIMPLE statement");
      goto fail;
    }

  addr = walk_tree (&stmt, verify_expr, ((void*)0), ((void*)0));
  if (addr)
    {
      debug_generic_stmt (addr);
      return 1;
    }






  if (lookup_stmt_eh_region (stmt) >= 0)
    {
      if (!tree_could_throw_p (stmt))
 {
   error ("statement marked for throw, but doesn%'t");
   goto fail;
 }
      if (!last_in_block && tree_can_throw_internal (stmt))
 {
   error ("statement marked for throw in middle of block");
   goto fail;
 }
    }

  return 0;

 fail:
  debug_generic_stmt (stmt);
  return 1;
}
