
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ BUILT_IN_MD ;
 scalar_t__ DECL_BUILT_IN_CLASS (scalar_t__) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ NULL_TREE ;
 char const* N_ (char*) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ VECTOR_TYPE ;
 int rs6000_darwin64_abi ;

__attribute__((used)) static const char *
invalid_arg_for_unprototyped_fn (tree typelist, tree funcdecl, tree val)
{
  return (!rs6000_darwin64_abi
   && typelist == 0
          && TREE_CODE (TREE_TYPE (val)) == VECTOR_TYPE
          && (funcdecl == NULL_TREE
              || (TREE_CODE (funcdecl) == FUNCTION_DECL
                  && DECL_BUILT_IN_CLASS (funcdecl) != BUILT_IN_MD)))
   ? N_("AltiVec argument passed to unprototyped function")
   : ((void*)0);
}
