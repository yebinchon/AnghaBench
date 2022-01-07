
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ COMPLETE_TYPE_P (int ) ;
 int CP_DECL_THREADPRIVATE_P (scalar_t__) ;
 scalar_t__ DECL_ANON_UNION_VAR_P (scalar_t__) ;
 scalar_t__ DECL_CONTEXT (scalar_t__) ;
 scalar_t__ DECL_EXTERNAL (scalar_t__) ;
 scalar_t__ DECL_INITIAL (scalar_t__) ;
 scalar_t__ DECL_LANG_SPECIFIC (scalar_t__) ;
 scalar_t__ DECL_NAME (scalar_t__) ;
 scalar_t__ DECL_NAMESPACE_SCOPE_P (scalar_t__) ;
 scalar_t__ DECL_PURE_VIRTUAL_P (scalar_t__) ;
 scalar_t__ DECL_TEMPLATE_INFO (scalar_t__) ;
 scalar_t__ DECL_TEMPLATE_RESULT (scalar_t__) ;
 scalar_t__ DECL_THREAD_LOCAL_P (scalar_t__) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TEMPLATE_DECL ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_DECL ;
 scalar_t__ VAR_DECL ;
 int decls_match (scalar_t__,scalar_t__) ;
 scalar_t__ same_type_p (int ,int ) ;
 scalar_t__ template_for_substitution (scalar_t__) ;
 scalar_t__ toplevel_bindings_p () ;

__attribute__((used)) static const char *
redeclaration_error_message (tree newdecl, tree olddecl)
{
  if (TREE_CODE (newdecl) == TYPE_DECL)
    {



      if (same_type_p (TREE_TYPE (newdecl), TREE_TYPE (olddecl)))
 return ((void*)0);
      else
 return "redefinition of %q#D";
    }
  else if (TREE_CODE (newdecl) == FUNCTION_DECL)
    {



      if (DECL_LANG_SPECIFIC (olddecl) && DECL_PURE_VIRTUAL_P (olddecl)
   && DECL_INITIAL (olddecl) == NULL_TREE)
 return ((void*)0);



      if (DECL_NAMESPACE_SCOPE_P (olddecl)
   && DECL_CONTEXT (olddecl) != DECL_CONTEXT (newdecl)
   && ! decls_match (olddecl, newdecl))
 return "%qD conflicts with used function";





      if (DECL_INITIAL (olddecl) != NULL_TREE
   && DECL_INITIAL (newdecl) != NULL_TREE)
 {
   if (DECL_NAME (olddecl) == NULL_TREE)
     return "%q#D not declared in class";
   else
     return "redefinition of %q#D";
 }
      return ((void*)0);
    }
  else if (TREE_CODE (newdecl) == TEMPLATE_DECL)
    {
      tree nt, ot;

      if (TREE_CODE (DECL_TEMPLATE_RESULT (newdecl)) == TYPE_DECL)
 {
   if (COMPLETE_TYPE_P (TREE_TYPE (newdecl))
       && COMPLETE_TYPE_P (TREE_TYPE (olddecl)))
     return "redefinition of %q#D";
   return ((void*)0);
 }

      if (TREE_CODE (DECL_TEMPLATE_RESULT (newdecl)) != FUNCTION_DECL
   || (DECL_TEMPLATE_RESULT (newdecl)
       == DECL_TEMPLATE_RESULT (olddecl)))
 return ((void*)0);

      nt = DECL_TEMPLATE_RESULT (newdecl);
      if (DECL_TEMPLATE_INFO (nt))
 nt = DECL_TEMPLATE_RESULT (template_for_substitution (nt));
      ot = DECL_TEMPLATE_RESULT (olddecl);
      if (DECL_TEMPLATE_INFO (ot))
 ot = DECL_TEMPLATE_RESULT (template_for_substitution (ot));
      if (DECL_INITIAL (nt) && DECL_INITIAL (ot))
 return "redefinition of %q#D";

      return ((void*)0);
    }
  else if (TREE_CODE (newdecl) == VAR_DECL
    && DECL_THREAD_LOCAL_P (newdecl) != DECL_THREAD_LOCAL_P (olddecl)
    && (! DECL_LANG_SPECIFIC (olddecl)
        || ! CP_DECL_THREADPRIVATE_P (olddecl)
        || DECL_THREAD_LOCAL_P (newdecl)))
    {


      if (DECL_THREAD_LOCAL_P (newdecl))
 return "thread-local declaration of %q#D follows "
        "non-thread-local declaration";
      else
 return "non-thread-local declaration of %q#D follows "
        "thread-local declaration";
    }
  else if (toplevel_bindings_p () || DECL_NAMESPACE_SCOPE_P (newdecl))
    {
      if (DECL_ANON_UNION_VAR_P (newdecl)
   || DECL_ANON_UNION_VAR_P (olddecl))
 return "redeclaration of %q#D";







      if (DECL_EXTERNAL (newdecl) || DECL_EXTERNAL (olddecl))
 return ((void*)0);

      return "redefinition of %q#D";
    }
  else
    {



      if (!(DECL_EXTERNAL (newdecl) && DECL_EXTERNAL (olddecl)))
 return "redeclaration of %q#D";
      return ((void*)0);
    }
}
