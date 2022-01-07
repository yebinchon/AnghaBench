
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_DOMAIN (scalar_t__) ;
 scalar_t__ TYPE_MAX_VALUE (scalar_t__) ;
 scalar_t__ TYPE_MIN_VALUE (scalar_t__) ;
 int abi_version_at_least (int) ;
 int cp_tree_equal (scalar_t__,scalar_t__) ;
 scalar_t__ fold (scalar_t__) ;
 scalar_t__ processing_template_decl ;
 int same_type_p (int ,int ) ;
 int value_dependent_expression_p (scalar_t__) ;

__attribute__((used)) static bool
comp_array_types (tree t1, tree t2, bool allow_redeclaration)
{
  tree d1;
  tree d2;
  tree max1, max2;

  if (t1 == t2)
    return 1;


  if (!same_type_p (TREE_TYPE (t1), TREE_TYPE (t2)))
    return 0;

  d1 = TYPE_DOMAIN (t1);
  d2 = TYPE_DOMAIN (t2);

  if (d1 == d2)
    return 1;
  if (!d1 || !d2)
    return allow_redeclaration;



  if (!cp_tree_equal (TYPE_MIN_VALUE (d1), TYPE_MIN_VALUE (d2)))
    return 0;
  max1 = TYPE_MAX_VALUE (d1);
  max2 = TYPE_MAX_VALUE (d2);
  if (processing_template_decl && !abi_version_at_least (2)
      && !value_dependent_expression_p (max1)
      && !value_dependent_expression_p (max2))
    {




      max1 = fold (max1);
      max2 = fold (max2);
    }

  if (!cp_tree_equal (max1, max2))
    return 0;

  return 1;
}
