
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int cp_lvalue_kind ;




 int CLASS_TYPE_P (scalar_t__) ;




 int DECL_C_BIT_FIELD (scalar_t__) ;
 int DECL_IN_AGGR_P (scalar_t__) ;
 int DECL_LANG_SPECIFIC (scalar_t__) ;
 int DECL_NONSTATIC_MEMBER_FUNCTION_P (scalar_t__) ;
 int DECL_PACKED (scalar_t__) ;
 int FIELD_DECL ;




 int METHOD_TYPE ;







 int REFERENCE_TYPE ;





 int TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int TREE_READONLY (scalar_t__) ;
 int TREE_SIDE_EFFECTS (scalar_t__) ;
 int TREE_STATIC (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;




 int clk_bitfield ;
 int clk_class ;
 int clk_none ;
 int clk_ordinary ;
 int clk_packed ;
 scalar_t__ current_class_ptr ;
 int gcc_unreachable () ;

__attribute__((used)) static cp_lvalue_kind
lvalue_p_1 (tree ref,
     int treat_class_rvalues_as_lvalues)
{
  cp_lvalue_kind op1_lvalue_kind = clk_none;
  cp_lvalue_kind op2_lvalue_kind = clk_none;

  if (TREE_CODE (TREE_TYPE (ref)) == REFERENCE_TYPE)
    return clk_ordinary;

  if (ref == current_class_ptr)
    return clk_none;

  switch (TREE_CODE (ref))
    {


    case 138:
    case 139:
    case 135:
    case 131:
    case 128:
    case 137:
    case 146:
      return lvalue_p_1 (TREE_OPERAND (ref, 0),
    treat_class_rvalues_as_lvalues);

    case 151:
      op1_lvalue_kind = lvalue_p_1 (TREE_OPERAND (ref, 0),
        treat_class_rvalues_as_lvalues);

      if (!op1_lvalue_kind


   || TREE_CODE (TREE_OPERAND (ref, 1)) != FIELD_DECL)
 ;
      else if (DECL_C_BIT_FIELD (TREE_OPERAND (ref, 1)))
 {


   op1_lvalue_kind &= ~clk_ordinary;

   op1_lvalue_kind |= clk_bitfield;
 }
      else if (DECL_PACKED (TREE_OPERAND (ref, 1)))
 op1_lvalue_kind |= clk_packed;

      return op1_lvalue_kind;

    case 133:
      return clk_ordinary;

    case 148:
    case 130:
      if (TREE_READONLY (ref) && ! TREE_STATIC (ref)
   && DECL_LANG_SPECIFIC (ref)
   && DECL_IN_AGGR_P (ref))
 return clk_none;
    case 145:
    case 153:
    case 140:
    case 136:
      if (TREE_CODE (TREE_TYPE (ref)) != METHOD_TYPE)
 return clk_ordinary;
      break;


    case 134:
      gcc_unreachable ();
    case 144:
    case 143:

      if (TREE_SIDE_EFFECTS (TREE_OPERAND (ref, 0))
   || TREE_SIDE_EFFECTS (TREE_OPERAND (ref, 1)))
 return clk_none;
      op1_lvalue_kind = lvalue_p_1 (TREE_OPERAND (ref, 0),
        treat_class_rvalues_as_lvalues);
      op2_lvalue_kind = lvalue_p_1 (TREE_OPERAND (ref, 1),
        treat_class_rvalues_as_lvalues);
      break;

    case 149:
      op1_lvalue_kind = lvalue_p_1 (TREE_OPERAND (ref, 1),
        treat_class_rvalues_as_lvalues);
      op2_lvalue_kind = lvalue_p_1 (TREE_OPERAND (ref, 2),
        treat_class_rvalues_as_lvalues);
      break;

    case 142:
      return clk_ordinary;

    case 150:
      return lvalue_p_1 (TREE_OPERAND (ref, 1),
    treat_class_rvalues_as_lvalues);

    case 132:
      return treat_class_rvalues_as_lvalues ? clk_class : clk_none;

    case 129:
      return (treat_class_rvalues_as_lvalues
       && CLASS_TYPE_P (TREE_TYPE (ref))
       ? clk_class : clk_none);

    case 152:

      return clk_none;

    case 147:


      return (DECL_NONSTATIC_MEMBER_FUNCTION_P (ref)
       ? clk_none : clk_ordinary);

    case 141:





      return clk_ordinary;

    default:
      break;
    }



  if (!op1_lvalue_kind || !op2_lvalue_kind)
    return clk_none;



  op1_lvalue_kind = op1_lvalue_kind | op2_lvalue_kind;


  if ((op1_lvalue_kind & ~clk_ordinary) != clk_none)
    op1_lvalue_kind &= ~clk_ordinary;
  return op1_lvalue_kind;
}
