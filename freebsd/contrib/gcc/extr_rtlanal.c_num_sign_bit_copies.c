
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int NULL_RTX ;
 int VOIDmode ;
 unsigned int cached_num_sign_bit_copies (int ,int,int ,int ,int ) ;

unsigned int
num_sign_bit_copies (rtx x, enum machine_mode mode)
{
  return cached_num_sign_bit_copies (x, mode, NULL_RTX, VOIDmode, 0);
}
