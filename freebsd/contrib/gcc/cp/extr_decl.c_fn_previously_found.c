
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ DECL_ARTIFICIAL (scalar_t__) ;
 scalar_t__ DECL_EXTERN_C_P (scalar_t__) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ NULL_TREE ;
 scalar_t__ OVERLOAD ;
 scalar_t__ OVL_CHAIN (scalar_t__) ;
 scalar_t__ OVL_CURRENT (scalar_t__) ;
 scalar_t__ OVL_NEXT (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 int TYPE_ARG_TYPES (scalar_t__) ;
 scalar_t__ compparms (int ,int ) ;
 int decls_match (scalar_t__,scalar_t__) ;
 scalar_t__ error_mark_node ;

__attribute__((used)) static bool
fn_previously_found (tree decl, tree olddecl)
{
  int types_match;

  if (olddecl == 0)
    return 0;

  if (TREE_CODE (olddecl) == OVERLOAD)
    {
      if (OVL_CHAIN (olddecl) == NULL_TREE)
 olddecl = OVL_CURRENT (olddecl);
      else
 {
   tree match;
   for (match = olddecl; match; match = OVL_NEXT (match))
     {
       if (fn_previously_found (decl, OVL_CURRENT (match)))
  return 1;
     }
   return 0;
 }
    }



  if (TREE_TYPE (olddecl) == error_mark_node)
    return 1;



  if (DECL_ARTIFICIAL (olddecl))
    return 0;

  if (TREE_CODE (olddecl) != FUNCTION_DECL)
    return 0;


  if (DECL_EXTERN_C_P (olddecl)
      && DECL_EXTERN_C_P (decl))
    return 1;


  if (compparms (TYPE_ARG_TYPES (TREE_TYPE (decl)),
   TYPE_ARG_TYPES (TREE_TYPE (olddecl))))
    return 1;

  types_match = decls_match (decl, olddecl);

  if (types_match)
    return 1;

  return 0;
}
