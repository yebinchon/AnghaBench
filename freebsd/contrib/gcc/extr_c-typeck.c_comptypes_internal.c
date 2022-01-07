
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {int (* comp_type_attributes ) (scalar_t__,scalar_t__) ;} ;





 int const ERROR_MARK ;

 int const INTEGER_CST ;
 int const INTEGER_TYPE ;


 int const TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_ATTRIBUTES (scalar_t__) ;
 scalar_t__ TYPE_DOMAIN (scalar_t__) ;
 scalar_t__ TYPE_IS_SIZETYPE (scalar_t__) ;
 scalar_t__ TYPE_MAIN_VARIANT (scalar_t__) ;
 scalar_t__ TYPE_MAX_VALUE (scalar_t__) ;
 scalar_t__ TYPE_MIN_VALUE (scalar_t__) ;
 int TYPE_MODE (scalar_t__) ;
 scalar_t__ TYPE_ORIG_SIZE_TYPE (scalar_t__) ;
 int TYPE_PRECISION (scalar_t__) ;
 scalar_t__ TYPE_QUALS (scalar_t__) ;
 int TYPE_REF_CAN_ALIAS_ALL (scalar_t__) ;
 int TYPE_UNSIGNED (scalar_t__) ;
 int TYPE_VECTOR_SUBPARTS (scalar_t__) ;


 int attribute_list_contained (scalar_t__,scalar_t__) ;
 scalar_t__ c_common_type_for_size (int ,int ) ;
 int c_vla_type_p (scalar_t__) ;
 int function_types_compatible_p (scalar_t__,scalar_t__) ;
 int same_translation_unit_p (scalar_t__,scalar_t__) ;
 int stub1 (scalar_t__,scalar_t__) ;
 int tagged_types_tu_compatible_p (scalar_t__,scalar_t__) ;
 TYPE_1__ targetm ;
 int tree_int_cst_equal (scalar_t__,scalar_t__) ;
 int types_are_block_compatible (scalar_t__,scalar_t__) ;

__attribute__((used)) static int
comptypes_internal (tree type1, tree type2)
{
  tree t1 = type1;
  tree t2 = type2;
  int attrval, val;



  if (t1 == t2 || !t1 || !t2
      || TREE_CODE (t1) == ERROR_MARK || TREE_CODE (t2) == ERROR_MARK)
    return 1;



  if (TREE_CODE (t1) == INTEGER_TYPE && TYPE_IS_SIZETYPE (t1)
      && TYPE_ORIG_SIZE_TYPE (t1))
    t1 = TYPE_ORIG_SIZE_TYPE (t1);

  if (TREE_CODE (t2) == INTEGER_TYPE && TYPE_IS_SIZETYPE (t2)
      && TYPE_ORIG_SIZE_TYPE (t2))
    t2 = TYPE_ORIG_SIZE_TYPE (t2);






  if (TREE_CODE (t1) == 133 && TREE_CODE (t2) != 133)
    t1 = c_common_type_for_size (TYPE_PRECISION (t1), TYPE_UNSIGNED (t1));
  else if (TREE_CODE (t2) == 133 && TREE_CODE (t1) != 133)
    t2 = c_common_type_for_size (TYPE_PRECISION (t2), TYPE_UNSIGNED (t2));

  if (t1 == t2)
    return 1;



  if (TREE_CODE (t1) != TREE_CODE (t2))
    return 0;



  if (TYPE_QUALS (t1) != TYPE_QUALS (t2))
    return 0;





  if (TREE_CODE (t1) != 135
      && TYPE_MAIN_VARIANT (t1) == TYPE_MAIN_VARIANT (t2))
    return 1;


  if (!(attrval = targetm.comp_type_attributes (t1, t2)))
     return 0;


  val = 0;

  switch (TREE_CODE (t1))
    {

      case 134:
  val = (TREE_CODE (t2) == 134) &&
        types_are_block_compatible (TREE_TYPE (t1), TREE_TYPE (t2));
  break;


    case 131:

      if (TYPE_MODE (t1) != TYPE_MODE (t2)
   || TYPE_REF_CAN_ALIAS_ALL (t1) != TYPE_REF_CAN_ALIAS_ALL (t2))
 break;
      val = (TREE_TYPE (t1) == TREE_TYPE (t2)
      ? 1 : comptypes_internal (TREE_TYPE (t1), TREE_TYPE (t2)));
      break;

    case 132:
      val = function_types_compatible_p (t1, t2);
      break;

    case 135:
      {
 tree d1 = TYPE_DOMAIN (t1);
 tree d2 = TYPE_DOMAIN (t2);
 bool d1_variable, d2_variable;
 bool d1_zero, d2_zero;
 val = 1;


 if (TREE_TYPE (t1) != TREE_TYPE (t2)
     && 0 == (val = comptypes_internal (TREE_TYPE (t1), TREE_TYPE (t2))))
   return 0;


 if (d1 == 0 || d2 == 0 || d1 == d2)
   break;

 d1_zero = !TYPE_MAX_VALUE (d1);
 d2_zero = !TYPE_MAX_VALUE (d2);

 d1_variable = (!d1_zero
         && (TREE_CODE (TYPE_MIN_VALUE (d1)) != INTEGER_CST
      || TREE_CODE (TYPE_MAX_VALUE (d1)) != INTEGER_CST));
 d2_variable = (!d2_zero
         && (TREE_CODE (TYPE_MIN_VALUE (d2)) != INTEGER_CST
      || TREE_CODE (TYPE_MAX_VALUE (d2)) != INTEGER_CST));
 d1_variable = d1_variable || (d1_zero && c_vla_type_p (t1));
 d2_variable = d2_variable || (d2_zero && c_vla_type_p (t2));

 if (d1_variable || d2_variable)
   break;
 if (d1_zero && d2_zero)
   break;
 if (d1_zero || d2_zero
     || !tree_int_cst_equal (TYPE_MIN_VALUE (d1), TYPE_MIN_VALUE (d2))
     || !tree_int_cst_equal (TYPE_MAX_VALUE (d1), TYPE_MAX_VALUE (d2)))
   val = 0;

 break;
      }

    case 133:
    case 130:
    case 129:
      if (val != 1 && !same_translation_unit_p (t1, t2))
 {
   tree a1 = TYPE_ATTRIBUTES (t1);
   tree a2 = TYPE_ATTRIBUTES (t2);

   if (! attribute_list_contained (a1, a2)
       && ! attribute_list_contained (a2, a1))
     break;

   if (attrval != 2)
     return tagged_types_tu_compatible_p (t1, t2);
   val = tagged_types_tu_compatible_p (t1, t2);
 }
      break;

    case 128:
      val = TYPE_VECTOR_SUBPARTS (t1) == TYPE_VECTOR_SUBPARTS (t2)
     && comptypes_internal (TREE_TYPE (t1), TREE_TYPE (t2));
      break;

    default:
      break;
    }
  return attrval == 2 && val == 1 ? 2 : val;
}
