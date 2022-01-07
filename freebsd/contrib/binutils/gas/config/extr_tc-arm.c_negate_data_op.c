
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long DATA_OP_SHIFT ;
 int FAIL ;






 unsigned long OPCODE_MASK ;




 unsigned long encode_arm_immediate (unsigned long) ;

__attribute__((used)) static int
negate_data_op (unsigned long * instruction,
  unsigned long value)
{
  int op, new_inst;
  unsigned long negated, inverted;

  negated = encode_arm_immediate (-value);
  inverted = encode_arm_immediate (~value);

  op = (*instruction >> DATA_OP_SHIFT) & 0xf;
  switch (op)
    {

    case 128:
      new_inst = 136;
      value = negated;
      break;

    case 136:
      new_inst = 128;
      value = negated;
      break;

    case 132:
      new_inst = 133;
      value = negated;
      break;

    case 133:
      new_inst = 132;
      value = negated;
      break;


    case 131:
      new_inst = 130;
      value = inverted;
      break;

    case 130:
      new_inst = 131;
      value = inverted;
      break;

    case 135:
      new_inst = 134;
      value = inverted;
      break;

    case 134:
      new_inst = 135;
      value = inverted;
      break;

    case 137:
      new_inst = 129;
      value = inverted;
      break;

    case 129:
      new_inst = 137;
      value = inverted;
      break;


    default:
      return FAIL;
    }

  if (value == (unsigned) FAIL)
    return FAIL;

  *instruction &= OPCODE_MASK;
  *instruction |= new_inst << DATA_OP_SHIFT;
  return value;
}
