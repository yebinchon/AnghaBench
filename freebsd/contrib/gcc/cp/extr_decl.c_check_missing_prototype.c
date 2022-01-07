
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int DECL_CONTEXT (int ) ;
 int DECL_DECLARED_INLINE_P (int ) ;
 int DECL_FUNCTION_MEMBER_P (int ) ;
 int DECL_MAIN_P (int ) ;
 int DECL_NAME (int ) ;
 scalar_t__ DECL_NAMESPACE_SCOPE_P (int ) ;
 scalar_t__ DECL_NON_THUNK_FUNCTION_P (int ) ;
 int OPT_Wmissing_prototypes ;
 scalar_t__ TREE_PUBLIC (int ) ;
 int decl_anon_ns_mem_p (int ) ;
 int fn_previously_found (int ,int ) ;
 int namespace_binding (int ,int ) ;
 scalar_t__ namespace_bindings_p () ;
 scalar_t__ warn_missing_prototypes ;
 int warning (int ,char*,int ) ;

__attribute__((used)) inline static void
check_missing_prototype (tree decl)
{
  if (warn_missing_prototypes
      && namespace_bindings_p ()
      && TREE_PUBLIC (decl)
      && !DECL_MAIN_P (decl)
      && DECL_NON_THUNK_FUNCTION_P (decl)
      && ! DECL_FUNCTION_MEMBER_P (decl)
      && DECL_NAMESPACE_SCOPE_P (decl)
      && ! decl_anon_ns_mem_p (decl)
      && ! DECL_DECLARED_INLINE_P (decl))
    {
      tree olddecl = namespace_binding (DECL_NAME (decl), DECL_CONTEXT (decl));
      if (!fn_previously_found (decl, olddecl))
 warning (OPT_Wmissing_prototypes, "no previous prototype for %q+D", decl);
    }
}
