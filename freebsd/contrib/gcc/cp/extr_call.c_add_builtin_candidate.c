
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct z_candidate {int dummy; } ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int ARITHMETIC_TYPE_P (scalar_t__) ;





 scalar_t__ BOOLEAN_TYPE ;

 int DERIVED_FROM_P (scalar_t__,scalar_t__) ;
 scalar_t__ ENUMERAL_TYPE ;

 scalar_t__ FUNCTION_TYPE ;



 int INTEGRAL_TYPE_P (scalar_t__) ;
 scalar_t__ IS_AGGR_TYPE (scalar_t__) ;
 scalar_t__ POINTER_TYPE ;




 scalar_t__ REFERENCE_TYPE ;

 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;


 scalar_t__ TYPE_PTRMEMFUNC_P (scalar_t__) ;
 scalar_t__ TYPE_PTRMEM_CLASS_TYPE (scalar_t__) ;
 scalar_t__ TYPE_PTRMEM_P (scalar_t__) ;
 int TYPE_PTRMEM_POINTED_TO_TYPE (scalar_t__) ;
 int TYPE_PTROB_P (scalar_t__) ;
 scalar_t__ TYPE_PTR_P (scalar_t__) ;
 int TYPE_PTR_TO_MEMBER_P (scalar_t__) ;

 int build_builtin_candidate (struct z_candidate**,scalar_t__,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,int) ;
 scalar_t__ build_reference_type (scalar_t__) ;
 int gcc_unreachable () ;
 scalar_t__ integer_type_node ;
 scalar_t__ integer_zero_node ;
 int is_complete (int ) ;
 int null_ptr_cst_p (scalar_t__) ;
 int promoted_arithmetic_type_p (scalar_t__) ;
 scalar_t__ ptrdiff_type_node ;
 int same_type_p (scalar_t__,scalar_t__) ;
 int uses_template_parms (scalar_t__) ;

__attribute__((used)) static void
add_builtin_candidate (struct z_candidate **candidates, enum tree_code code,
         enum tree_code code2, tree fnname, tree type1,
         tree type2, tree *args, tree *argtypes, int flags)
{
  switch (code)
    {
    case 134:
    case 135:
      args[1] = integer_zero_node;
      type2 = integer_type_node;
      break;
    default:
      break;
    }

  switch (code)
    {
    case 135:
    case 133:
      if (TREE_CODE (type1) == BOOLEAN_TYPE)
 return;
    case 134:
    case 132:
      if (ARITHMETIC_TYPE_P (type1) || TYPE_PTROB_P (type1))
 {
   type1 = build_reference_type (type1);
   break;
 }
      return;
    case 149:
      if (TREE_CODE (type1) == POINTER_TYPE
   && (TYPE_PTROB_P (type1)
       || TREE_CODE (TREE_TYPE (type1)) == FUNCTION_TYPE))
 break;
      return;
    case 128:
      if (TREE_CODE (type1) == POINTER_TYPE)
 break;
    case 139:
      if (ARITHMETIC_TYPE_P (type1))
 break;
      return;





    case 155:
      if (INTEGRAL_TYPE_P (type1))
 break;
      return;
    case 144:
      if (TREE_CODE (type1) == POINTER_TYPE
   && TYPE_PTR_TO_MEMBER_P (type2))
 {
   tree c1 = TREE_TYPE (type1);
   tree c2 = TYPE_PTRMEM_CLASS_TYPE (type2);

   if (IS_AGGR_TYPE (c1) && DERIVED_FROM_P (c2, c1)
       && (TYPE_PTRMEMFUNC_P (type2)
    || is_complete (TYPE_PTRMEM_POINTED_TO_TYPE (type2))))
     break;
 }
      return;
    case 143:
      if (TYPE_PTROB_P (type1) && TYPE_PTROB_P (type2))
 break;
      if (TYPE_PTROB_P (type1) && INTEGRAL_TYPE_P (type2))
 {
   type2 = ptrdiff_type_node;
   break;
 }
    case 140:
    case 130:
      if (ARITHMETIC_TYPE_P (type1) && ARITHMETIC_TYPE_P (type2))
 break;
      return;

    case 152:
    case 138:
      if ((TYPE_PTRMEMFUNC_P (type1) && TYPE_PTRMEMFUNC_P (type2))
   || (TYPE_PTRMEM_P (type1) && TYPE_PTRMEM_P (type2)))
 break;
      if (TYPE_PTR_TO_MEMBER_P (type1) && null_ptr_cst_p (args[1]))
 {
   type2 = type1;
   break;
 }
      if (TYPE_PTR_TO_MEMBER_P (type2) && null_ptr_cst_p (args[0]))
 {
   type1 = type2;
   break;
 }

    case 146:
    case 150:
    case 148:
    case 151:
    case 145:
    case 142:
      if (ARITHMETIC_TYPE_P (type1) && ARITHMETIC_TYPE_P (type2))
 break;
      if (TYPE_PTR_P (type1) && TYPE_PTR_P (type2))
 break;
      if (TREE_CODE (type1) == ENUMERAL_TYPE
   && TREE_CODE (type2) == ENUMERAL_TYPE)
 break;
      if (TYPE_PTR_P (type1)
   && null_ptr_cst_p (args[1])
   && !uses_template_parms (type1))
 {
   type2 = type1;
   break;
 }
      if (null_ptr_cst_p (args[0])
   && TYPE_PTR_P (type2)
   && !uses_template_parms (type2))
 {
   type1 = type2;
   break;
 }
      return;

    case 136:
      if (ARITHMETIC_TYPE_P (type1) && ARITHMETIC_TYPE_P (type2))
 break;
    case 158:
      if (INTEGRAL_TYPE_P (type1) && TYPE_PTROB_P (type2))
 {
   type1 = ptrdiff_type_node;
   break;
 }
      if (TYPE_PTROB_P (type1) && INTEGRAL_TYPE_P (type2))
 {
   type2 = ptrdiff_type_node;
   break;
 }
      return;
    case 129:
    case 157:
    case 156:
    case 154:
    case 147:
    case 131:
      if (INTEGRAL_TYPE_P (type1) && INTEGRAL_TYPE_P (type2))
 break;
      return;
    case 141:
      switch (code2)
 {
 case 136:
 case 143:
   if (TYPE_PTROB_P (type1) && INTEGRAL_TYPE_P (type2))
     {
       type2 = ptrdiff_type_node;
       break;
     }
 case 140:
 case 130:
   if (ARITHMETIC_TYPE_P (type1) && ARITHMETIC_TYPE_P (type2))
     break;
   return;

 case 129:
 case 157:
 case 156:
 case 154:
 case 147:
 case 131:
   if (INTEGRAL_TYPE_P (type1) && INTEGRAL_TYPE_P (type2))
     break;
   return;

 case 137:
   if (ARITHMETIC_TYPE_P (type1) && ARITHMETIC_TYPE_P (type2))
     break;
   if ((TYPE_PTRMEMFUNC_P (type1) && TYPE_PTRMEMFUNC_P (type2))
       || (TYPE_PTR_P (type1) && TYPE_PTR_P (type2))
       || (TYPE_PTRMEM_P (type1) && TYPE_PTRMEM_P (type2))
       || ((TYPE_PTRMEMFUNC_P (type1)
     || TREE_CODE (type1) == POINTER_TYPE)
    && null_ptr_cst_p (args[1])))
     {
       type2 = type1;
       break;
     }
   return;

 default:
   gcc_unreachable ();
 }
      type1 = build_reference_type (type1);
      break;

    case 153:
      if (promoted_arithmetic_type_p (type1)
   && promoted_arithmetic_type_p (type2))

 break;


      if (!(TYPE_PTR_P (type1) || TYPE_PTR_TO_MEMBER_P (type1))
   || !(TYPE_PTR_P (type2) || TYPE_PTR_TO_MEMBER_P (type2)))
 return;





      break;

    default:
      gcc_unreachable ();
    }



  if (type2 && !same_type_p (type1, type2)
      && TREE_CODE (type1) == TREE_CODE (type2)
      && (TREE_CODE (type1) == REFERENCE_TYPE
   || (TYPE_PTR_P (type1) && TYPE_PTR_P (type2))
   || (TYPE_PTRMEM_P (type1) && TYPE_PTRMEM_P (type2))
   || TYPE_PTRMEMFUNC_P (type1)
   || IS_AGGR_TYPE (type1)
   || TREE_CODE (type1) == ENUMERAL_TYPE))
    {
      build_builtin_candidate
 (candidates, fnname, type1, type1, args, argtypes, flags);
      build_builtin_candidate
 (candidates, fnname, type2, type2, args, argtypes, flags);
      return;
    }

  build_builtin_candidate
    (candidates, fnname, type1, type2, args, argtypes, flags);
}
