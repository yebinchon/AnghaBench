
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ ADDR_DIFF_VEC ;
 scalar_t__ ADDR_VEC ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int GET_MODE_SIZE (int ) ;
 scalar_t__ JUMP_P (int ) ;
 int PATTERN (int ) ;
 int XVECLEN (int ,int) ;
 int get_attr_length (int ) ;

__attribute__((used)) static int
mips16_insn_length (rtx insn)
{
  if (JUMP_P (insn))
    {
      rtx body = PATTERN (insn);
      if (GET_CODE (body) == ADDR_VEC)
 return GET_MODE_SIZE (GET_MODE (body)) * XVECLEN (body, 0);
      if (GET_CODE (body) == ADDR_DIFF_VEC)
 return GET_MODE_SIZE (GET_MODE (body)) * XVECLEN (body, 1);
    }
  return get_attr_length (insn);
}
