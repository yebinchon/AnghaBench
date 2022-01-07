
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef scalar_t__ HOST_WIDE_INT ;


 scalar_t__ BITS_PER_WORD ;
 int GET_MODE (int ) ;
 scalar_t__ GET_MODE_BITSIZE (int ) ;
 scalar_t__ INTVAL (int ) ;
 int ISA_HAS_EXT_INS ;
 int VOIDmode ;
 int register_operand (int ,int ) ;

bool
mips_use_ins_ext_p (rtx op, rtx size, rtx position)
{
  HOST_WIDE_INT len, pos;

  if (!ISA_HAS_EXT_INS
      || !register_operand (op, VOIDmode)
      || GET_MODE_BITSIZE (GET_MODE (op)) > BITS_PER_WORD)
    return 0;

  len = INTVAL (size);
  pos = INTVAL (position);

  if (len <= 0 || len >= GET_MODE_BITSIZE (GET_MODE (op))
      || pos < 0 || pos + len > GET_MODE_BITSIZE (GET_MODE (op)))
    return 0;

  return 1;
}
