
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ ABI_EABI ;
 scalar_t__ ABI_O64 ;
 int BITS_PER_UNIT ;
 int BLKmode ;
 int BYTES_BIG_ENDIAN ;
 int FLOAT_TYPE_P (scalar_t__) ;
 int GET_MODE_BITSIZE (int) ;
 scalar_t__ GET_MODE_CLASS (int) ;
 scalar_t__ INTEGRAL_TYPE_P (scalar_t__) ;
 scalar_t__ MODE_FLOAT ;
 scalar_t__ MODE_INT ;
 int PARM_BOUNDARY ;
 scalar_t__ POINTER_TYPE_P (scalar_t__) ;
 int int_size_in_bytes (scalar_t__) ;
 scalar_t__ mips_abi ;

bool
mips_pad_arg_upward (enum machine_mode mode, tree type)
{


  if (!BYTES_BIG_ENDIAN)
    return 1;



  if (type != 0
      ? INTEGRAL_TYPE_P (type) || POINTER_TYPE_P (type)
      : GET_MODE_CLASS (mode) == MODE_INT)
    return 0;


  if (mips_abi == ABI_O64)
    if (type != 0 ? FLOAT_TYPE_P (type) : GET_MODE_CLASS (mode) == MODE_FLOAT)
      return 0;


  if (mips_abi != ABI_EABI)
    return 1;


  if (mode != BLKmode)
    return (GET_MODE_BITSIZE (mode) >= PARM_BOUNDARY);
  else
    return (int_size_in_bytes (type) >= (PARM_BOUNDARY / BITS_PER_UNIT));
}
