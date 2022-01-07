
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int BYTES_BIG_ENDIAN ;
 int FLOAT_TYPE_P (scalar_t__) ;
 scalar_t__ GET_MODE_CLASS (int) ;
 scalar_t__ MODE_FLOAT ;
 int mips_pad_arg_upward (int,scalar_t__) ;

bool
mips_pad_reg_upward (enum machine_mode mode, tree type)
{

  if (type != 0 ? FLOAT_TYPE_P (type) : GET_MODE_CLASS (mode) == MODE_FLOAT)
    return !BYTES_BIG_ENDIAN;



  return mips_pad_arg_upward (mode, type);
}
