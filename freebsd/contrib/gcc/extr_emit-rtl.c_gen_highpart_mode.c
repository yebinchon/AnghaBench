
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int GET_MODE (int ) ;
 scalar_t__ VOIDmode ;
 int gcc_assert (int) ;
 int gen_highpart (int,int ) ;
 int simplify_gen_subreg (int,int ,int,int ) ;
 int subreg_highpart_offset (int,int) ;

rtx
gen_highpart_mode (enum machine_mode outermode, enum machine_mode innermode, rtx exp)
{
  if (GET_MODE (exp) != VOIDmode)
    {
      gcc_assert (GET_MODE (exp) == innermode);
      return gen_highpart (outermode, exp);
    }
  return simplify_gen_subreg (outermode, exp, innermode,
         subreg_highpart_offset (outermode, innermode));
}
