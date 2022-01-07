
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct sra_elt {int type; int element; } ;


 int ARRAY_RANGE_REF ;
 int ARRAY_REF ;


 int COMPONENT_REF ;
 int DECL_FIELD_CONTEXT (int ) ;
 int IMAGPART_EXPR ;
 int RANGE_EXPR ;
 int REALPART_EXPR ;

 int TODO_update_smt_usage ;
 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_MAIN_VARIANT (int ) ;
 int build1 (int ,int ,int ) ;
 int build3 (int ,int ,int ,int ,int *) ;
 int build4 (int ,int ,int ,int ,int *,int *) ;
 int find_compatible_field (int ,int ) ;
 int gcc_unreachable () ;
 int integer_zero_node ;
 int todoflags ;

__attribute__((used)) static tree
generate_one_element_ref (struct sra_elt *elt, tree base)
{
  switch (TREE_CODE (TREE_TYPE (base)))
    {
    case 128:
      {
 tree field = elt->element;


 if (DECL_FIELD_CONTEXT (field) != TYPE_MAIN_VARIANT (TREE_TYPE (base)))
   field = find_compatible_field (TREE_TYPE (base), field);

        return build3 (COMPONENT_REF, elt->type, base, field, ((void*)0));
      }

    case 130:
      todoflags |= TODO_update_smt_usage;
      if (TREE_CODE (elt->element) == RANGE_EXPR)
 return build4 (ARRAY_RANGE_REF, elt->type, base,
         TREE_OPERAND (elt->element, 0), ((void*)0), ((void*)0));
      else
 return build4 (ARRAY_REF, elt->type, base, elt->element, ((void*)0), ((void*)0));

    case 129:
      if (elt->element == integer_zero_node)
 return build1 (REALPART_EXPR, elt->type, base);
      else
 return build1 (IMAGPART_EXPR, elt->type, base);

    default:
      gcc_unreachable ();
    }
}
