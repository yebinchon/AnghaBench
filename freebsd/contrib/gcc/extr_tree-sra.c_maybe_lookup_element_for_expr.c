
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct sra_elt {int dummy; } ;






 int INSERT ;

 int RANGE_EXPR ;

 int RECORD_TYPE ;

 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 int TYPE_DOMAIN (int ) ;
 int TYPE_MAX_VALUE (int ) ;
 int TYPE_MIN_VALUE (int ) ;

 int build2 (int ,int ,int ,int ) ;
 int in_array_bounds_p (int ) ;
 int integer_one_node ;
 int integer_type_node ;
 int integer_zero_node ;
 int is_sra_candidate_decl (int ) ;
 struct sra_elt* lookup_element (struct sra_elt*,int ,int ,int ) ;
 int range_in_array_bounds_p (int ) ;

__attribute__((used)) static struct sra_elt *
maybe_lookup_element_for_expr (tree expr)
{
  struct sra_elt *elt;
  tree child;

  switch (TREE_CODE (expr))
    {
    case 128:
    case 131:
    case 129:
      if (is_sra_candidate_decl (expr))
 return lookup_element (((void*)0), expr, TREE_TYPE (expr), INSERT);
      return ((void*)0);

    case 134:

      if (in_array_bounds_p (expr))
        child = TREE_OPERAND (expr, 1);
      else
 return ((void*)0);
      break;

    case 135:

      if (range_in_array_bounds_p (expr))
 {
   tree domain = TYPE_DOMAIN (TREE_TYPE (expr));
   child = build2 (RANGE_EXPR, integer_type_node,
     TYPE_MIN_VALUE (domain), TYPE_MAX_VALUE (domain));
 }
      else
 return ((void*)0);
      break;

    case 133:

      if (TREE_CODE (TREE_TYPE (TREE_OPERAND (expr, 0))) != RECORD_TYPE)
 return ((void*)0);
      child = TREE_OPERAND (expr, 1);
      break;

    case 130:
      child = integer_zero_node;
      break;
    case 132:
      child = integer_one_node;
      break;

    default:
      return ((void*)0);
    }

  elt = maybe_lookup_element_for_expr (TREE_OPERAND (expr, 0));
  if (elt)
    return lookup_element (elt, child, TREE_TYPE (expr), INSERT);
  return ((void*)0);
}
