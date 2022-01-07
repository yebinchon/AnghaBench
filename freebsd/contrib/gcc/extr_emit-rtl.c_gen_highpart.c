
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int GET_MODE (int) ;
 unsigned int GET_MODE_SIZE (int) ;
 scalar_t__ GET_MODE_UNIT_SIZE (int ) ;
 scalar_t__ MEM_P (int) ;
 unsigned int UNITS_PER_WORD ;
 int gcc_assert (int) ;
 int simplify_gen_subreg (int,int,int ,int ) ;
 int subreg_highpart_offset (int,int ) ;
 int validize_mem (int) ;

rtx
gen_highpart (enum machine_mode mode, rtx x)
{
  unsigned int msize = GET_MODE_SIZE (mode);
  rtx result;



  gcc_assert (msize <= UNITS_PER_WORD
       || msize == (unsigned int) GET_MODE_UNIT_SIZE (GET_MODE (x)));

  result = simplify_gen_subreg (mode, x, GET_MODE (x),
    subreg_highpart_offset (mode, GET_MODE (x)));
  gcc_assert (result);




  if (MEM_P (result))
    {
      result = validize_mem (result);
      gcc_assert (result);
    }

  return result;
}
