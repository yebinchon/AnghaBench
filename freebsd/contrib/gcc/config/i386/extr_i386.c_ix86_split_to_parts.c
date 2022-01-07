
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int REAL_VALUE_TYPE ;
typedef int HOST_WIDE_INT ;


 scalar_t__ CONST_DOUBLE ;
 scalar_t__ CONST_VECTOR ;

 int DImode ;
 scalar_t__ GET_CODE (int *) ;
 int GET_MODE (int *) ;
 int GET_MODE_SIZE (int) ;
 int HOST_BITS_PER_WIDE_INT ;
 scalar_t__ MEM ;
 scalar_t__ MEM_READONLY_P (int *) ;
 int MMX_REGNO_P (scalar_t__) ;
 int PUT_MODE (int *,int ) ;
 int Pmode ;
 int REAL_VALUE_FROM_CONST_DOUBLE (int ,int *) ;
 int REAL_VALUE_TO_TARGET_DOUBLE (int ,long*) ;
 int REAL_VALUE_TO_TARGET_LONG_DOUBLE (int ,long*) ;
 scalar_t__ REG ;
 scalar_t__ REGNO (int *) ;
 scalar_t__ REG_P (int *) ;
 int SImode ;
 int TARGET_64BIT ;
 int TFmode ;
 int TImode ;
 int VOIDmode ;

 int * adjust_address (int *,int,int) ;
 int * copy_rtx (int *) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int * gen_int_mode (long,int) ;
 int * gen_rtx_REG (int,scalar_t__) ;
 int * immed_double_const (long,long,int) ;
 int int_mode_for_mode (int) ;
 int * maybe_get_pool_constant (int *) ;
 scalar_t__ offsettable_memref_p (int *) ;
 int push_operand (int *,int ) ;
 int real_to_target (long*,int *,int) ;
 int reload_completed ;
 int * simplify_subreg (int,int *,int ,int ) ;
 int split_di (int **,int,int **,int **) ;
 int split_ti (int **,int,int **,int **) ;

__attribute__((used)) static int
ix86_split_to_parts (rtx operand, rtx *parts, enum machine_mode mode)
{
  int size;

  if (!TARGET_64BIT)
    size = mode==128 ? 3 : GET_MODE_SIZE (mode) / 4;
  else
    size = (GET_MODE_SIZE (mode) + 4) / 8;

  gcc_assert (GET_CODE (operand) != REG || !MMX_REGNO_P (REGNO (operand)));
  gcc_assert (size >= 2 && size <= 3);



  if (GET_CODE (operand) == MEM && MEM_READONLY_P (operand))
    {
      rtx tmp = maybe_get_pool_constant (operand);
      if (tmp)
 operand = tmp;
    }

  if (GET_CODE (operand) == MEM && !offsettable_memref_p (operand))
    {

      int ok = push_operand (operand, VOIDmode);

      gcc_assert (ok);

      operand = copy_rtx (operand);
      PUT_MODE (operand, Pmode);
      parts[0] = parts[1] = parts[2] = operand;
      return size;
    }

  if (GET_CODE (operand) == CONST_VECTOR)
    {
      enum machine_mode imode = int_mode_for_mode (mode);



      operand = simplify_subreg (imode, operand, GET_MODE (operand), 0);
      gcc_assert (operand != ((void*)0));
      mode = imode;
    }

  if (!TARGET_64BIT)
    {
      if (mode == DImode)
 split_di (&operand, 1, &parts[0], &parts[1]);
      else
 {
   if (REG_P (operand))
     {
       gcc_assert (reload_completed);
       parts[0] = gen_rtx_REG (SImode, REGNO (operand) + 0);
       parts[1] = gen_rtx_REG (SImode, REGNO (operand) + 1);
       if (size == 3)
  parts[2] = gen_rtx_REG (SImode, REGNO (operand) + 2);
     }
   else if (offsettable_memref_p (operand))
     {
       operand = adjust_address (operand, SImode, 0);
       parts[0] = operand;
       parts[1] = adjust_address (operand, SImode, 4);
       if (size == 3)
  parts[2] = adjust_address (operand, SImode, 8);
     }
   else if (GET_CODE (operand) == CONST_DOUBLE)
     {
       REAL_VALUE_TYPE r;
       long l[4];

       REAL_VALUE_FROM_CONST_DOUBLE (r, operand);
       switch (mode)
  {
  case 128:
    REAL_VALUE_TO_TARGET_LONG_DOUBLE (r, l);
    parts[2] = gen_int_mode (l[2], SImode);
    break;
  case 129:
    REAL_VALUE_TO_TARGET_DOUBLE (r, l);
    break;
  default:
    gcc_unreachable ();
  }
       parts[1] = gen_int_mode (l[1], SImode);
       parts[0] = gen_int_mode (l[0], SImode);
     }
   else
     gcc_unreachable ();
 }
    }
  else
    {
      if (mode == TImode)
 split_ti (&operand, 1, &parts[0], &parts[1]);
      if (mode == 128 || mode == TFmode)
 {
   enum machine_mode upper_mode = mode==128 ? SImode : DImode;
   if (REG_P (operand))
     {
       gcc_assert (reload_completed);
       parts[0] = gen_rtx_REG (DImode, REGNO (operand) + 0);
       parts[1] = gen_rtx_REG (upper_mode, REGNO (operand) + 1);
     }
   else if (offsettable_memref_p (operand))
     {
       operand = adjust_address (operand, DImode, 0);
       parts[0] = operand;
       parts[1] = adjust_address (operand, upper_mode, 8);
     }
   else if (GET_CODE (operand) == CONST_DOUBLE)
     {
       REAL_VALUE_TYPE r;
       long l[4];

       REAL_VALUE_FROM_CONST_DOUBLE (r, operand);
       real_to_target (l, &r, mode);


       if (HOST_BITS_PER_WIDE_INT >= 64)
         parts[0]
    = gen_int_mode
        ((l[0] & (((HOST_WIDE_INT) 2 << 31) - 1))
         + ((((HOST_WIDE_INT) l[1]) << 31) << 1),
         DImode);
       else
         parts[0] = immed_double_const (l[0], l[1], DImode);

       if (upper_mode == SImode)
         parts[1] = gen_int_mode (l[2], SImode);
       else if (HOST_BITS_PER_WIDE_INT >= 64)
         parts[1]
    = gen_int_mode
        ((l[2] & (((HOST_WIDE_INT) 2 << 31) - 1))
         + ((((HOST_WIDE_INT) l[3]) << 31) << 1),
         DImode);
       else
         parts[1] = immed_double_const (l[2], l[3], DImode);
     }
   else
     gcc_unreachable ();
 }
    }

  return size;
}
