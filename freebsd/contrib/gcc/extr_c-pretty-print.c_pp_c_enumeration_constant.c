
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int c_pretty_printer ;


 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_PURPOSE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 int TREE_VALUE (scalar_t__) ;
 scalar_t__ TYPE_VALUES (scalar_t__) ;
 int pp_c_type_cast (int *,scalar_t__) ;
 int pp_id_expression (int *,int ) ;
 int tree_int_cst_equal (int ,scalar_t__) ;

__attribute__((used)) static bool
pp_c_enumeration_constant (c_pretty_printer *pp, tree e)
{
  bool value_is_named = 1;
  tree type = TREE_TYPE (e);
  tree value;


  for (value = TYPE_VALUES (type);
       value != NULL_TREE && !tree_int_cst_equal (TREE_VALUE (value), e);
       value = TREE_CHAIN (value))
    ;

  if (value != NULL_TREE)
    pp_id_expression (pp, TREE_PURPOSE (value));
  else
    {

      pp_c_type_cast (pp, type);
      value_is_named = 0;
    }

  return value_is_named;
}
