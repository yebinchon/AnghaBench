
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int offsetT ;


 unsigned int FAIL ;
 int T2_DATA_OP_SHIFT ;




 int T2_OPCODE_MASK ;




 unsigned int encode_thumb32_immediate (unsigned int) ;

__attribute__((used)) static unsigned int
thumb32_negate_data_op (offsetT *instruction, unsigned int value)
{
  int op, new_inst;
  int rd;
  unsigned int negated, inverted;

  negated = encode_thumb32_immediate (-value);
  inverted = encode_thumb32_immediate (~value);

  rd = (*instruction >> 8) & 0xf;
  op = (*instruction >> T2_DATA_OP_SHIFT) & 0xf;
  switch (op)
    {

    case 128:
      new_inst = 134;
      value = negated;
      break;

    case 134:
      new_inst = 128;
      value = negated;
      break;


    case 130:
      new_inst = 131;
      value = inverted;
      break;

    case 131:
      new_inst = 130;
      value = inverted;
      break;


    case 133:
      new_inst = 132;
      if (rd == 15)
 value = FAIL;
      else
 value = inverted;
      break;

    case 132:
      new_inst = 133;
      value = inverted;
      break;


    case 135:
      new_inst = 129;
      value = inverted;
      break;

    case 129:
      new_inst = 135;
      value = inverted;
      break;


    default:
      return FAIL;
    }

  if (value == (unsigned int)FAIL)
    return FAIL;

  *instruction &= T2_OPCODE_MASK;
  *instruction |= new_inst << T2_DATA_OP_SHIFT;
  return value;
}
