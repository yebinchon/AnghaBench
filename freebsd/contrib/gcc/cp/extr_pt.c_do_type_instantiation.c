
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsubst_flags_t ;
typedef scalar_t__ tree ;


 scalar_t__ CLASSTYPE_EXPLICIT_INSTANTIATION (scalar_t__) ;
 int CLASSTYPE_INTERFACE_ONLY (scalar_t__) ;
 scalar_t__ CLASSTYPE_NESTED_UTDS (scalar_t__) ;
 int CLASSTYPE_TEMPLATE_INFO (scalar_t__) ;
 scalar_t__ CLASSTYPE_TEMPLATE_SPECIALIZATION (scalar_t__) ;
 int CLASS_TYPE_P (scalar_t__) ;
 int COMPLETE_TYPE_P (scalar_t__) ;
 scalar_t__ DECL_TEMPLATE_INSTANTIATION (scalar_t__) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ NULL_TREE ;
 scalar_t__ RID_EXTERN ;
 scalar_t__ RID_INLINE ;
 scalar_t__ RID_STATIC ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_DECL ;
 scalar_t__ TYPE_FIELDS (scalar_t__) ;
 scalar_t__ TYPE_METHODS (scalar_t__) ;
 int TYPE_NAME (scalar_t__) ;
 scalar_t__ VAR_DECL ;
 int binding_table_foreach (scalar_t__,int ,scalar_t__*) ;
 int bt_instantiate_type_proc ;
 int check_explicit_instantiation_namespace (int ) ;
 int complete_type (scalar_t__) ;
 int error (char*,scalar_t__) ;
 int in_system_header ;
 int instantiate_class_member (scalar_t__,int) ;
 int mark_class_instantiated (scalar_t__,int) ;
 scalar_t__ pedantic ;
 int pedwarn (char*,scalar_t__) ;
 scalar_t__* ridpointers ;
 int tf_error ;

void
do_type_instantiation (tree t, tree storage, tsubst_flags_t complain)
{
  int extern_p = 0;
  int nomem_p = 0;
  int static_p = 0;
  int previous_instantiation_extern_p = 0;

  if (TREE_CODE (t) == TYPE_DECL)
    t = TREE_TYPE (t);

  if (! CLASS_TYPE_P (t) || ! CLASSTYPE_TEMPLATE_INFO (t))
    {
      error ("explicit instantiation of non-template type %qT", t);
      return;
    }

  complete_type (t);

  if (!COMPLETE_TYPE_P (t))
    {
      if (complain & tf_error)
 error ("explicit instantiation of %q#T before definition of template",
        t);
      return;
    }

  if (storage != NULL_TREE)
    {
      if (pedantic && !in_system_header)
 pedwarn("ISO C++ forbids the use of %qE on explicit instantiations",
  storage);

      if (storage == ridpointers[(int) RID_INLINE])
 nomem_p = 1;
      else if (storage == ridpointers[(int) RID_EXTERN])
 extern_p = 1;
      else if (storage == ridpointers[(int) RID_STATIC])
 static_p = 1;
      else
 {
   error ("storage class %qD applied to template instantiation",
   storage);
   extern_p = 0;
 }
    }

  if (CLASSTYPE_TEMPLATE_SPECIALIZATION (t))
    {
      return;
    }
  else if (CLASSTYPE_EXPLICIT_INSTANTIATION (t))
    {
      previous_instantiation_extern_p = CLASSTYPE_INTERFACE_ONLY (t);

      if (!previous_instantiation_extern_p && !extern_p
   && (complain & tf_error))
 pedwarn ("duplicate explicit instantiation of %q#T", t);


      if (!CLASSTYPE_INTERFACE_ONLY (t))
 return;
    }

  check_explicit_instantiation_namespace (TYPE_NAME (t));
  mark_class_instantiated (t, extern_p);

  if (nomem_p)
    return;

  {
    tree tmp;
    if (! static_p)
      for (tmp = TYPE_METHODS (t); tmp; tmp = TREE_CHAIN (tmp))
 if (TREE_CODE (tmp) == FUNCTION_DECL
     && DECL_TEMPLATE_INSTANTIATION (tmp))
   instantiate_class_member (tmp, extern_p);

    for (tmp = TYPE_FIELDS (t); tmp; tmp = TREE_CHAIN (tmp))
      if (TREE_CODE (tmp) == VAR_DECL && DECL_TEMPLATE_INSTANTIATION (tmp))
 instantiate_class_member (tmp, extern_p);

    if (CLASSTYPE_NESTED_UTDS (t))
      binding_table_foreach (CLASSTYPE_NESTED_UTDS (t),
        bt_instantiate_type_proc, &storage);
  }
}
