
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ ADDR_EXPR ;
 int DECL_UID (int ) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ VAR_DECL ;
 int bitmap_set_bit (int ,int ) ;
 int get_base_var (int ) ;
 scalar_t__ has_proper_scope_for_analysis (int ) ;
 int module_statics_escape ;

__attribute__((used)) static void
look_for_address_of (tree t)
{
  if (TREE_CODE (t) == ADDR_EXPR)
    {
      tree x = get_base_var (t);
      if (TREE_CODE (x) == VAR_DECL || TREE_CODE (x) == FUNCTION_DECL)
 if (has_proper_scope_for_analysis (x))
   bitmap_set_bit (module_statics_escape, DECL_UID (x));
    }
}
