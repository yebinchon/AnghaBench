
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {int (* comp_type_attributes ) (scalar_t__,scalar_t__) ;} ;





 int COMPARE_BASE ;
 int COMPARE_DERIVED ;
 int COMPARE_REDECLARATION ;
 int COMPARE_STRICT ;

 int DECL_TEMPLATE_PARMS (int ) ;
 int DERIVED_FROM_P (scalar_t__,scalar_t__) ;

 int const INTEGER_TYPE ;






 int TEMPLATE_TEMPLATE_PARM_TEMPLATE_DECL (scalar_t__) ;
 int TEMPLATE_TYPE_IDX (scalar_t__) ;
 int TEMPLATE_TYPE_LEVEL (scalar_t__) ;

 int const TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;

 int TYPENAME_TYPE_FULLNAME (scalar_t__) ;
 int TYPE_ARG_TYPES (scalar_t__) ;
 scalar_t__ TYPE_CONTEXT (scalar_t__) ;
 scalar_t__ TYPE_FOR_JAVA (scalar_t__) ;
 int TYPE_IDENTIFIER (scalar_t__) ;
 scalar_t__ TYPE_IS_SIZETYPE (scalar_t__) ;
 scalar_t__ TYPE_MAIN_VARIANT (scalar_t__) ;
 int TYPE_MODE (scalar_t__) ;
 scalar_t__ TYPE_OFFSET_BASETYPE (scalar_t__) ;
 scalar_t__ TYPE_ORIG_SIZE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_P (scalar_t__) ;
 scalar_t__ TYPE_PTRMEMFUNC_FN_TYPE (scalar_t__) ;
 scalar_t__ TYPE_PTRMEMFUNC_P (scalar_t__) ;
 scalar_t__ TYPE_QUALS (scalar_t__) ;
 int TYPE_REF_CAN_ALIAS_ALL (scalar_t__) ;
 int TYPE_TEMPLATE_INFO (scalar_t__) ;
 int TYPE_TI_ARGS (scalar_t__) ;
 int TYPE_TI_TEMPLATE (scalar_t__) ;
 int TYPE_VECTOR_SUBPARTS (scalar_t__) ;



 int comp_array_types (scalar_t__,scalar_t__,int) ;
 int comp_template_args (int ,int ) ;
 int comp_template_parms (int ,int ) ;
 int compparms (int ,int ) ;
 int cp_tree_equal (int ,int ) ;
 scalar_t__ error_mark_node ;
 int gcc_assert (int) ;
 scalar_t__ resolve_typename_type (scalar_t__,int) ;
 int same_type_ignoring_top_level_qualifiers_p (scalar_t__,scalar_t__) ;
 int same_type_p (scalar_t__,scalar_t__) ;
 int stub1 (scalar_t__,scalar_t__) ;
 TYPE_1__ targetm ;

bool
comptypes (tree t1, tree t2, int strict)
{
  if (t1 == t2)
    return 1;


  if (t1 == error_mark_node || t2 == error_mark_node)
    return 0;

  gcc_assert (TYPE_P (t1) && TYPE_P (t2));



  if (TREE_CODE (t1) == 131)
    {
      tree resolved = resolve_typename_type (t1, 1);

      if (resolved != error_mark_node)
 t1 = resolved;
    }

  if (TREE_CODE (t2) == 131)
    {
      tree resolved = resolve_typename_type (t2, 1);

      if (resolved != error_mark_node)
 t2 = resolved;
    }



  if (TREE_CODE (t1) == INTEGER_TYPE && TYPE_IS_SIZETYPE (t1)
      && TYPE_ORIG_SIZE_TYPE (t1))
    t1 = TYPE_ORIG_SIZE_TYPE (t1);

  if (TREE_CODE (t2) == INTEGER_TYPE && TYPE_IS_SIZETYPE (t2)
      && TYPE_ORIG_SIZE_TYPE (t2))
    t2 = TYPE_ORIG_SIZE_TYPE (t2);

  if (TYPE_PTRMEMFUNC_P (t1))
    t1 = TYPE_PTRMEMFUNC_FN_TYPE (t1);
  if (TYPE_PTRMEMFUNC_P (t2))
    t2 = TYPE_PTRMEMFUNC_FN_TYPE (t2);


  if (TREE_CODE (t1) != TREE_CODE (t2))
    return 0;



  if (TREE_CODE (t1) != 143
      && TYPE_QUALS (t1) != TYPE_QUALS (t2))
    return 0;
  if (TYPE_FOR_JAVA (t1) != TYPE_FOR_JAVA (t2))
    return 0;





  if (TREE_CODE (t1) != 143
      && TYPE_MAIN_VARIANT (t1) == TYPE_MAIN_VARIANT (t2))
    return 1;


  switch (TREE_CODE (t1))
    {
    case 133:
    case 141:
      if (TEMPLATE_TYPE_IDX (t1) != TEMPLATE_TYPE_IDX (t2)
   || TEMPLATE_TYPE_LEVEL (t1) != TEMPLATE_TYPE_LEVEL (t2))
 return 0;
      if (!comp_template_parms
   (DECL_TEMPLATE_PARMS (TEMPLATE_TEMPLATE_PARM_TEMPLATE_DECL (t1)),
    DECL_TEMPLATE_PARMS (TEMPLATE_TEMPLATE_PARM_TEMPLATE_DECL (t2))))
 return 0;
      if (TREE_CODE (t1) == 133)
 break;

      strict = COMPARE_STRICT;


    case 135:
    case 129:
      if (TYPE_TEMPLATE_INFO (t1) && TYPE_TEMPLATE_INFO (t2)
   && (TYPE_TI_TEMPLATE (t1) == TYPE_TI_TEMPLATE (t2)
       || TREE_CODE (t1) == 141)
   && comp_template_args (TYPE_TI_ARGS (t1), TYPE_TI_ARGS (t2)))
 break;

      if ((strict & COMPARE_BASE) && DERIVED_FROM_P (t1, t2))
 break;
      else if ((strict & COMPARE_DERIVED) && DERIVED_FROM_P (t2, t1))
 break;

      return 0;

    case 137:
      if (!comptypes (TYPE_OFFSET_BASETYPE (t1), TYPE_OFFSET_BASETYPE (t2),
        strict & ~COMPARE_REDECLARATION))
 return 0;
      if (!same_type_p (TREE_TYPE (t1), TREE_TYPE (t2)))
 return 0;
      break;


      case 142:
  if (TREE_CODE (t2) == 142)
  {
    tree pt1 = TREE_TYPE (t1);
    tree pt2 = TREE_TYPE (t2);
    if (!same_type_ignoring_top_level_qualifiers_p (TREE_TYPE (pt1),
         TREE_TYPE (pt2)))
      return 0;
    if (!compparms (TYPE_ARG_TYPES (pt1), TYPE_ARG_TYPES (pt2)))
      return 0;
    break;
  }


    case 136:
    case 134:
      if (TYPE_MODE (t1) != TYPE_MODE (t2)
   || TYPE_REF_CAN_ALIAS_ALL (t1) != TYPE_REF_CAN_ALIAS_ALL (t2)
   || !same_type_p (TREE_TYPE (t1), TREE_TYPE (t2)))
 return 0;
      break;

    case 138:
    case 139:
      if (!same_type_p (TREE_TYPE (t1), TREE_TYPE (t2)))
 return 0;
      if (!compparms (TYPE_ARG_TYPES (t1), TYPE_ARG_TYPES (t2)))
 return 0;
      break;

    case 143:

      if (!comp_array_types (t1, t2, !!(strict & COMPARE_REDECLARATION)))
 return 0;
      break;

    case 132:
      if (TEMPLATE_TYPE_IDX (t1) != TEMPLATE_TYPE_IDX (t2)
   || TEMPLATE_TYPE_LEVEL (t1) != TEMPLATE_TYPE_LEVEL (t2))
 return 0;
      break;

    case 131:
      if (!cp_tree_equal (TYPENAME_TYPE_FULLNAME (t1),
     TYPENAME_TYPE_FULLNAME (t2)))
 return 0;
      if (!same_type_p (TYPE_CONTEXT (t1), TYPE_CONTEXT (t2)))
 return 0;
      break;

    case 130:
      if (!cp_tree_equal (TYPE_IDENTIFIER (t1), TYPE_IDENTIFIER (t2)))
 return 0;
      if (!same_type_p (TYPE_CONTEXT (t1), TYPE_CONTEXT (t2)))
 return 0;
      break;

    case 140:
      if (!same_type_p (TREE_TYPE (t1), TREE_TYPE (t2)))
 return 0;
      break;

    case 128:
      if (TYPE_VECTOR_SUBPARTS (t1) != TYPE_VECTOR_SUBPARTS (t2)
   || !same_type_p (TREE_TYPE (t1), TREE_TYPE (t2)))
 return 0;
      break;

    default:
      return 0;
    }




  return targetm.comp_type_attributes (t1, t2);
}
