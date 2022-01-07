
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ DECL_BASED_ON_RESTRICT_P (scalar_t__) ;
 scalar_t__ DECL_GET_RESTRICT_BASE (scalar_t__) ;
 scalar_t__ DECL_P (scalar_t__) ;
 int POINTER_TYPE_P (int ) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_CODE_CLASS (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ VAR_DECL ;
 scalar_t__ error_mark_node ;



__attribute__((used)) static tree
find_base_decl (tree t)
{
  tree d0, d1;

  if (t == 0 || t == error_mark_node || ! POINTER_TYPE_P (TREE_TYPE (t)))
    return 0;



  if (DECL_P (t))
    {
      if (TREE_CODE (t) == VAR_DECL && DECL_BASED_ON_RESTRICT_P (t))
 t = DECL_GET_RESTRICT_BASE (t);
      return t;
    }




  switch (TREE_CODE_CLASS (TREE_CODE (t)))
    {
    case 128:
      return find_base_decl (TREE_OPERAND (t, 0));

    case 129:

      d0 = find_base_decl (TREE_OPERAND (t, 0));
      d1 = find_base_decl (TREE_OPERAND (t, 1));
      if (d0 == d1)
 return d0;
      else if (d0 == 0)
 return d1;
      else if (d1 == 0)
 return d0;
      else
 return 0;

    default:
      return 0;
    }
}
