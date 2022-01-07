
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int DImode ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ MEM ;
 int TImode ;
 int adjust_address (int ,int ,int) ;
 int simplify_gen_subreg (int ,int ,int ,int) ;

void
split_ti (rtx operands[], int num, rtx lo_half[], rtx hi_half[])
{
  while (num--)
    {
      rtx op = operands[num];



      if (GET_CODE (op) == MEM)
 {
   lo_half[num] = adjust_address (op, DImode, 0);
   hi_half[num] = adjust_address (op, DImode, 8);
 }
      else
 {
   lo_half[num] = simplify_gen_subreg (DImode, op, TImode, 0);
   hi_half[num] = simplify_gen_subreg (DImode, op, TImode, 8);
 }
    }
}
