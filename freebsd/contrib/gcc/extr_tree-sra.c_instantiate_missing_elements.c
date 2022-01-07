
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct sra_elt {int element; int type; } ;




 int COMPONENT_REF ;
 int DECL_MODE (int ) ;
 int FIELD_DECL ;
 int INTEGRAL_TYPE_P (int ) ;
 int NULL_TREE ;
 int PLUS_EXPR ;

 int TREE_CHAIN (int ) ;
 int TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_DOMAIN (int ) ;
 int TYPE_FIELDS (int ) ;
 int TYPE_MAX_VALUE (int ) ;
 int TYPE_MIN_VALUE (int ) ;
 int TYPE_MODE (int ) ;
 int build3 (int ,int ,int ,int ,int ) ;
 int gcc_unreachable () ;
 int get_unwidened (int ,int ) ;
 int instantiate_missing_elements_1 (struct sra_elt*,int ,int ) ;
 int int_const_binop (int ,int ,int ,int) ;
 int integer_one_node ;
 int integer_zero_node ;
 int tree_int_cst_equal (int ,int ) ;

__attribute__((used)) static void
instantiate_missing_elements (struct sra_elt *elt)
{
  tree type = elt->type;

  switch (TREE_CODE (type))
    {
    case 128:
      {
 tree f;
 for (f = TYPE_FIELDS (type); f ; f = TREE_CHAIN (f))
   if (TREE_CODE (f) == FIELD_DECL)
     {
       tree field_type = TREE_TYPE (f);





       if (INTEGRAL_TYPE_P (field_type)
    && DECL_MODE (f) != TYPE_MODE (field_type))
  field_type = TREE_TYPE (get_unwidened (build3 (COMPONENT_REF,
              field_type,
              elt->element,
              f, NULL_TREE),
             NULL_TREE));

       instantiate_missing_elements_1 (elt, f, field_type);
     }
 break;
      }

    case 130:
      {
 tree i, max, subtype;

 i = TYPE_MIN_VALUE (TYPE_DOMAIN (type));
 max = TYPE_MAX_VALUE (TYPE_DOMAIN (type));
 subtype = TREE_TYPE (type);

 while (1)
   {
     instantiate_missing_elements_1 (elt, i, subtype);
     if (tree_int_cst_equal (i, max))
       break;
     i = int_const_binop (PLUS_EXPR, i, integer_one_node, 1);
   }

 break;
      }

    case 129:
      type = TREE_TYPE (type);
      instantiate_missing_elements_1 (elt, integer_zero_node, type);
      instantiate_missing_elements_1 (elt, integer_one_node, type);
      break;

    default:
      gcc_unreachable ();
    }
}
