
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int HOST_WIDE_INT ;


 scalar_t__ CONST_DOUBLE ;
 scalar_t__ CONST_INT ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ GET_MODE (int ) ;
 int GET_MODE_BITSIZE (int) ;
 scalar_t__ GET_MODE_CLASS (int) ;
 scalar_t__ GET_MODE_SIZE (int) ;
 int HARD_REGISTER_P (int ) ;
 scalar_t__ HARD_REGNO_MODE_OK (int ,int) ;
 int HOST_BITS_PER_WIDE_INT ;
 scalar_t__ INTVAL (int ) ;
 scalar_t__ MEM_P (int ) ;
 int MEM_VOLATILE_P (int ) ;
 scalar_t__ MODE_INT ;
 int REGNO (int ) ;
 scalar_t__ REG_P (int ) ;
 scalar_t__ SUBREG ;
 int SUBREG_PROMOTED_UNSIGNED_P (int ) ;
 scalar_t__ SUBREG_PROMOTED_VAR_P (int ) ;
 int SUBREG_REG (int ) ;
 scalar_t__ TRULY_NOOP_TRUNCATION (int,int) ;
 scalar_t__ VECTOR_MODE_P (int) ;
 scalar_t__ VOIDmode ;
 int convert_move (int ,int ,int) ;
 scalar_t__* direct_load ;
 int gcc_assert (int) ;
 int gen_int_mode (int,int) ;
 int gen_lowpart (int,int ) ;
 int gen_reg_rtx (int) ;
 int immed_double_const (int,int,int) ;
 int simplify_gen_subreg (int,int ,int,int ) ;

rtx
convert_modes (enum machine_mode mode, enum machine_mode oldmode, rtx x, int unsignedp)
{
  rtx temp;




  if (GET_CODE (x) == SUBREG && SUBREG_PROMOTED_VAR_P (x)
      && GET_MODE_SIZE (GET_MODE (SUBREG_REG (x))) >= GET_MODE_SIZE (mode)
      && SUBREG_PROMOTED_UNSIGNED_P (x) == unsignedp)
    x = gen_lowpart (mode, x);

  if (GET_MODE (x) != VOIDmode)
    oldmode = GET_MODE (x);

  if (mode == oldmode)
    return x;







  if (unsignedp && GET_MODE_CLASS (mode) == MODE_INT
      && GET_MODE_BITSIZE (mode) == 2 * HOST_BITS_PER_WIDE_INT
      && GET_CODE (x) == CONST_INT && INTVAL (x) < 0)
    {
      HOST_WIDE_INT val = INTVAL (x);

      if (oldmode != VOIDmode
   && HOST_BITS_PER_WIDE_INT > GET_MODE_BITSIZE (oldmode))
 {
   int width = GET_MODE_BITSIZE (oldmode);


   val &= ((HOST_WIDE_INT) 1 << width) - 1;
 }

      return immed_double_const (val, (HOST_WIDE_INT) 0, mode);
    }






  if ((GET_CODE (x) == CONST_INT
       && GET_MODE_BITSIZE (mode) <= HOST_BITS_PER_WIDE_INT)
      || (GET_MODE_CLASS (mode) == MODE_INT
   && GET_MODE_CLASS (oldmode) == MODE_INT
   && (GET_CODE (x) == CONST_DOUBLE
       || (GET_MODE_SIZE (mode) <= GET_MODE_SIZE (oldmode)
    && ((MEM_P (x) && ! MEM_VOLATILE_P (x)
         && direct_load[(int) mode])
        || (REG_P (x)
     && (! HARD_REGISTER_P (x)
         || HARD_REGNO_MODE_OK (REGNO (x), mode))
     && TRULY_NOOP_TRUNCATION (GET_MODE_BITSIZE (mode),
          GET_MODE_BITSIZE (GET_MODE (x)))))))))
    {



      if (GET_CODE (x) == CONST_INT && oldmode != VOIDmode
   && GET_MODE_SIZE (mode) > GET_MODE_SIZE (oldmode))
 {
   HOST_WIDE_INT val = INTVAL (x);
   int width = GET_MODE_BITSIZE (oldmode);



   val &= ((HOST_WIDE_INT) 1 << width) - 1;
   if (! unsignedp
       && (val & ((HOST_WIDE_INT) 1 << (width - 1))))
     val |= (HOST_WIDE_INT) (-1) << width;

   return gen_int_mode (val, mode);
 }

      return gen_lowpart (mode, x);
    }



  if (VECTOR_MODE_P (mode) && GET_MODE (x) == VOIDmode)
    {
      gcc_assert (GET_MODE_BITSIZE (mode) == GET_MODE_BITSIZE (oldmode));
      return simplify_gen_subreg (mode, x, oldmode, 0);
    }

  temp = gen_reg_rtx (mode);
  convert_move (temp, x, unsignedp);
  return temp;
}
