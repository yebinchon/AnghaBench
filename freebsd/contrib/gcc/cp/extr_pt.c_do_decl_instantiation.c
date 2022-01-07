
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int DECL_CONTEXT (scalar_t__) ;
 scalar_t__ DECL_EXPLICIT_INSTANTIATION (scalar_t__) ;
 int DECL_IMPLICIT_INSTANTIATION (scalar_t__) ;
 int DECL_LANG_SPECIFIC (scalar_t__) ;
 int DECL_NAME (scalar_t__) ;
 scalar_t__ DECL_NOT_REALLY_EXTERN (scalar_t__) ;
 int DECL_TEMPLATE_INFO (scalar_t__) ;
 scalar_t__ DECL_TEMPLATE_SPECIALIZATION (scalar_t__) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ NULL_TREE ;
 scalar_t__ RID_EXTERN ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ VAR_DECL ;
 int check_explicit_instantiation_namespace (scalar_t__) ;
 int error (char*,scalar_t__) ;
 scalar_t__ error_mark_node ;
 int in_system_header ;
 int instantiate_decl (scalar_t__,int,int) ;
 scalar_t__ lookup_field (int ,int ,int ,int) ;
 int mark_decl_instantiated (scalar_t__,int) ;
 scalar_t__ pedantic ;
 int pedwarn (char*,...) ;
 scalar_t__* ridpointers ;

void
do_decl_instantiation (tree decl, tree storage)
{
  tree result = NULL_TREE;
  int extern_p = 0;

  if (!decl || decl == error_mark_node)


    return;
  else if (! DECL_LANG_SPECIFIC (decl))
    {
      error ("explicit instantiation of non-template %q#D", decl);
      return;
    }
  else if (TREE_CODE (decl) == VAR_DECL)
    {
      result = lookup_field (DECL_CONTEXT (decl), DECL_NAME (decl), 0, 0);
      if (!result || TREE_CODE (result) != VAR_DECL)
 {
   error ("no matching template for %qD found", decl);
   return;
 }
    }
  else if (TREE_CODE (decl) != FUNCTION_DECL)
    {
      error ("explicit instantiation of %q#D", decl);
      return;
    }
  else
    result = decl;






  if (DECL_TEMPLATE_SPECIALIZATION (result))
    {
      return;
    }
  else if (DECL_EXPLICIT_INSTANTIATION (result))
    {
      if (DECL_NOT_REALLY_EXTERN (result) && !extern_p)
 pedwarn ("duplicate explicit instantiation of %q#D", result);


      if (extern_p)
 return;
    }
  else if (!DECL_IMPLICIT_INSTANTIATION (result))
    {
      error ("no matching template for %qD found", result);
      return;
    }
  else if (!DECL_TEMPLATE_INFO (result))
    {
      pedwarn ("explicit instantiation of non-template %q#D", result);
      return;
    }

  if (storage == NULL_TREE)
    ;
  else if (storage == ridpointers[(int) RID_EXTERN])
    {
      if (pedantic && !in_system_header)
 pedwarn ("ISO C++ forbids the use of %<extern%> on explicit "
   "instantiations");
      extern_p = 1;
    }
  else
    error ("storage class %qD applied to template instantiation", storage);

  check_explicit_instantiation_namespace (result);
  mark_decl_instantiated (result, extern_p);
  if (! extern_p)
    instantiate_decl (result, 1,
                                  0);
}
