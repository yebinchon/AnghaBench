
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ ADDR_EXPR ;
 scalar_t__ ARRAY_REF ;
 scalar_t__ COMPONENT_REF ;
 int DECL_FIELD_CONTEXT (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ VAR_DECL ;
 scalar_t__ get_base_var (scalar_t__) ;
 int get_canon_type (int ,int,int) ;
 int has_proper_scope_for_analysis (scalar_t__) ;
 int mark_interesting_addressof (int ,int ) ;

__attribute__((used)) static void
look_for_address_of (tree t)
{
  if (TREE_CODE (t) == ADDR_EXPR)
    {
      tree x = get_base_var (t);
      tree cref = TREE_OPERAND (t, 0);



      tree fielddecl = NULL_TREE;
      while (cref!= x)
 {
   if (TREE_CODE (cref) == COMPONENT_REF)
     {
       fielddecl = TREE_OPERAND (cref, 1);
       mark_interesting_addressof (TREE_TYPE (fielddecl),
       DECL_FIELD_CONTEXT (fielddecl));
     }
   else if (TREE_CODE (cref) == ARRAY_REF)
     get_canon_type (TREE_TYPE (cref), 0, 0);

   cref = TREE_OPERAND (cref, 0);
 }

      if (TREE_CODE (x) == VAR_DECL)
 has_proper_scope_for_analysis (x);
    }
}
