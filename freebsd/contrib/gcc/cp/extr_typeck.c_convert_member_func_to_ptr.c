
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ METHOD_TYPE ;
 scalar_t__ PTRMEM_CST ;
 int PTRMEM_CST_MEMBER (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_PTRMEMFUNC_P (int ) ;
 int TYPE_PTRMEM_CLASS_TYPE (int ) ;
 int build_addr_func (int ) ;
 int build_address (int ) ;
 int build_nop (int ,int ) ;
 int gcc_assert (int) ;
 int get_member_function_from_ptrfunc (int *,int ) ;
 int maybe_dummy_object (int ,int ) ;
 scalar_t__ pedantic ;
 int pedwarn (char*,int ,int ) ;
 scalar_t__ warn_pmf2ptr ;

tree
convert_member_func_to_ptr (tree type, tree expr)
{
  tree intype;
  tree decl;

  intype = TREE_TYPE (expr);
  gcc_assert (TYPE_PTRMEMFUNC_P (intype)
       || TREE_CODE (intype) == METHOD_TYPE);

  if (pedantic || warn_pmf2ptr)
    pedwarn ("converting from %qT to %qT", intype, type);

  if (TREE_CODE (intype) == METHOD_TYPE)
    expr = build_addr_func (expr);
  else if (TREE_CODE (expr) == PTRMEM_CST)
    expr = build_address (PTRMEM_CST_MEMBER (expr));
  else
    {
      decl = maybe_dummy_object (TYPE_PTRMEM_CLASS_TYPE (intype), 0);
      decl = build_address (decl);
      expr = get_member_function_from_ptrfunc (&decl, expr);
    }

  return build_nop (type, expr);
}
