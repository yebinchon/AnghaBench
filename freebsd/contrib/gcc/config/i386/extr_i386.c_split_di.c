
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ DImode ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ GET_MODE (int ) ;
 scalar_t__ MEM ;
 int SImode ;
 scalar_t__ VOIDmode ;
 int adjust_address (int ,int ,int) ;
 int simplify_gen_subreg (int ,int ,scalar_t__,int) ;

void
split_di (rtx operands[], int num, rtx lo_half[], rtx hi_half[])
{
  while (num--)
    {
      rtx op = operands[num];



      if (GET_CODE (op) == MEM)
 {
   lo_half[num] = adjust_address (op, SImode, 0);
   hi_half[num] = adjust_address (op, SImode, 4);
 }
      else
 {
   lo_half[num] = simplify_gen_subreg (SImode, op,
           GET_MODE (op) == VOIDmode
           ? DImode : GET_MODE (op), 0);
   hi_half[num] = simplify_gen_subreg (SImode, op,
           GET_MODE (op) == VOIDmode
           ? DImode : GET_MODE (op), 4);
 }
    }
}
