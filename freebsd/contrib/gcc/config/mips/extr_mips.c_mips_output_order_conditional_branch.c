
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int GET_CODE (int ) ;




 char* MIPS_BRANCH (char*,char*) ;
 char const* mips_output_conditional_branch (int ,int *,char const*,char const*) ;

const char *
mips_output_order_conditional_branch (rtx insn, rtx *operands, bool inverted_p)
{
  const char *branch[2];



  switch (GET_CODE (operands[0]))
    {

    case 129:
      inverted_p = !inverted_p;

    case 130:
      branch[!inverted_p] = MIPS_BRANCH ("bne", "%2,%.,%1");
      branch[inverted_p] = MIPS_BRANCH ("beq", "%2,%.,%1");
      break;


    case 128:
      inverted_p = !inverted_p;

    case 131:
      branch[!inverted_p] = MIPS_BRANCH ("beq", "%.,%.,%1");
      branch[inverted_p] = MIPS_BRANCH ("bne", "%.,%.,%1");
      break;

    default:
      branch[!inverted_p] = MIPS_BRANCH ("b%C0z", "%2,%1");
      branch[inverted_p] = MIPS_BRANCH ("b%N0z", "%2,%1");
      break;
    }
  return mips_output_conditional_branch (insn, operands, branch[1], branch[0]);
}
