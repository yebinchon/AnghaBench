
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ TREE_BINFO ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_PRIVATE (int ) ;
 scalar_t__ TREE_PROTECTED (int ) ;
 int accessible_p (int ,int ,int) ;
 int error (char*,...) ;
 int gcc_assert (int) ;

bool
enforce_access (tree basetype_path, tree decl, tree diag_decl)
{
  gcc_assert (TREE_CODE (basetype_path) == TREE_BINFO);

  if (!accessible_p (basetype_path, decl, 1))
    {
      if (TREE_PRIVATE (decl))
 error ("%q+#D is private", diag_decl);
      else if (TREE_PROTECTED (decl))
 error ("%q+#D is protected", diag_decl);
      else
 error ("%q+#D is inaccessible", diag_decl);
      error ("within this context");
      return 0;
    }

  return 1;
}
