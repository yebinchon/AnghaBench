
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int COMPLETE_TYPE_P (int ) ;
 int NULL_TREE ;
 scalar_t__ POINTER_TYPE ;
 scalar_t__ REFERENCE_TYPE ;
 scalar_t__ TEMPLATE_TYPE_PARM ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ VOID_TYPE_P (scalar_t__) ;
 int complete_type (scalar_t__) ;
 int cxx_incomplete_type_diagnostic (int ,scalar_t__,int) ;
 scalar_t__ error_mark_node ;
 int gcc_assert (int) ;
 scalar_t__ processing_template_decl ;
 scalar_t__ same_type_p (scalar_t__,scalar_t__) ;
 scalar_t__ tree_cons (int ,scalar_t__,scalar_t__) ;

tree
add_exception_specifier (tree list, tree spec, int complain)
{
  bool ok;
  tree core = spec;
  bool is_ptr;
  int diag_type = -1;

  if (spec == error_mark_node)
    return list;

  gcc_assert (spec && (!list || TREE_VALUE (list)));




  is_ptr = TREE_CODE (core) == POINTER_TYPE;
  if (is_ptr || TREE_CODE (core) == REFERENCE_TYPE)
    core = TREE_TYPE (core);
  if (complain < 0)
    ok = 1;
  else if (VOID_TYPE_P (core))
    ok = is_ptr;
  else if (TREE_CODE (core) == TEMPLATE_TYPE_PARM)
    ok = 1;
  else if (processing_template_decl)
    ok = 1;
  else
    {
      ok = 1;




      if (!COMPLETE_TYPE_P (complete_type (core)))
 diag_type = 2;
    }

  if (ok)
    {
      tree probe;

      for (probe = list; probe; probe = TREE_CHAIN (probe))
 if (same_type_p (TREE_VALUE (probe), spec))
   break;
      if (!probe)
 list = tree_cons (NULL_TREE, spec, list);
    }
  else
    diag_type = 0;

  if (diag_type >= 0 && complain)
    cxx_incomplete_type_diagnostic (NULL_TREE, core, diag_type);

  return list;
}
