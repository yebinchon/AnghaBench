
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 int import_export_decl (scalar_t__) ;
 int rest_of_decl_compilation (scalar_t__,int,int) ;
 int var_finalized_p (scalar_t__) ;

__attribute__((used)) static void
write_out_vars (tree vars)
{
  tree v;

  for (v = vars; v; v = TREE_CHAIN (v))
    {
      tree var = TREE_VALUE (v);
      if (!var_finalized_p (var))
 {
   import_export_decl (var);
   rest_of_decl_compilation (var, 1, 1);
 }
    }
}
