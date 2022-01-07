
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct addr_const {int offset; int base; } ;
typedef int rtx ;


 int ARRAY_RANGE_REF ;
 int ARRAY_REF ;

 int COMPONENT_REF ;

 int DECL_RTL (int ) ;

 int FUNCTION_MODE ;


 int MEM_P (int ) ;
 int Pmode ;


 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 int TYPE_SIZE_UNIT (int ) ;

 int XEXP (int ,int ) ;
 int byte_position (int ) ;
 int force_label_rtx (int ) ;
 int gcc_assert (int ) ;
 int gcc_unreachable () ;
 int gen_rtx_LABEL_REF (int ,int ) ;
 int gen_rtx_MEM (int ,int ) ;
 scalar_t__ host_integerp (int ,int ) ;
 scalar_t__ int_byte_position (int ) ;
 int output_constant_def (int ,int) ;
 int tree_low_cst (int ,int) ;

__attribute__((used)) static void
decode_addr_const (tree exp, struct addr_const *value)
{
  tree target = TREE_OPERAND (exp, 0);
  int offset = 0;
  rtx x;

  while (1)
    {
      if (TREE_CODE (target) == COMPONENT_REF
   && host_integerp (byte_position (TREE_OPERAND (target, 1)), 0))

 {
   offset += int_byte_position (TREE_OPERAND (target, 1));
   target = TREE_OPERAND (target, 0);
 }
      else if (TREE_CODE (target) == ARRAY_REF
        || TREE_CODE (target) == ARRAY_RANGE_REF)
 {
   offset += (tree_low_cst (TYPE_SIZE_UNIT (TREE_TYPE (target)), 1)
       * tree_low_cst (TREE_OPERAND (target, 1), 0));
   target = TREE_OPERAND (target, 0);
 }
      else
 break;
    }

  switch (TREE_CODE (target))
    {
    case 128:
    case 133:
      x = DECL_RTL (target);
      break;

    case 131:
      x = gen_rtx_MEM (FUNCTION_MODE,
         gen_rtx_LABEL_REF (Pmode, force_label_rtx (target)));
      break;

    case 130:
    case 129:
    case 135:
    case 134:
    case 132:
      x = output_constant_def (target, 1);
      break;

    default:
      gcc_unreachable ();
    }

  gcc_assert (MEM_P (x));
  x = XEXP (x, 0);

  value->base = x;
  value->offset = offset;
}
