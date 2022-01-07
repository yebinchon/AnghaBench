
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int GET_MODE_BITSIZE (int) ;
 int HOST_BITS_PER_WIDE_INT ;
 int floor_log2 (int ) ;
 int nonzero_bits (int ,int) ;
 scalar_t__ nonzero_sign_valid ;
 int num_sign_bit_copies (int ,int) ;

unsigned int
extended_count (rtx x, enum machine_mode mode, int unsignedp)
{
  if (nonzero_sign_valid == 0)
    return 0;

  return (unsignedp
   ? (GET_MODE_BITSIZE (mode) <= HOST_BITS_PER_WIDE_INT
      ? (unsigned int) (GET_MODE_BITSIZE (mode) - 1
          - floor_log2 (nonzero_bits (x, mode)))
      : 0)
   : num_sign_bit_copies (x, mode) - 1);
}
