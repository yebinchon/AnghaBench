
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ BYTES_BIG_ENDIAN ;
 scalar_t__ FLOAT_MODE_P (int) ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 int GET_MODE_BITSIZE (int) ;
 scalar_t__ GET_MODE_SIZE (int) ;
 int MAX (scalar_t__,scalar_t__) ;
 int MEM_P (scalar_t__) ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 scalar_t__ REG_P (scalar_t__) ;
 scalar_t__ SCALAR_INT_MODE_P (int) ;
 scalar_t__ SUBREG ;
 scalar_t__ SUBREG_REG (scalar_t__) ;
 scalar_t__ TRULY_NOOP_TRUNCATION (int ,int ) ;
 scalar_t__ UNITS_PER_WORD ;
 scalar_t__ WORDS_BIG_ENDIAN ;
 scalar_t__ adjust_address (scalar_t__,int,int) ;
 scalar_t__ copy_to_reg (scalar_t__) ;
 scalar_t__ force_reg (int,scalar_t__) ;
 int gcc_assert (int) ;
 scalar_t__ gen_lowpart_common (int,scalar_t__) ;
 int no_new_pseudos ;

rtx
gen_lowpart_general (enum machine_mode mode, rtx x)
{
  rtx result = gen_lowpart_common (mode, x);

  if (result)
    return result;

  else if (REG_P (x)

    || (GET_CODE (x) == SUBREG
        && FLOAT_MODE_P (GET_MODE (SUBREG_REG (x)))))
    {
      result = gen_lowpart_common (mode, copy_to_reg (x));
      gcc_assert (result != 0);
      return result;
    }
  else
    {
      int offset = 0;


      gcc_assert (MEM_P (x));


      if (GET_MODE_SIZE (GET_MODE (x)) <= UNITS_PER_WORD
   && SCALAR_INT_MODE_P (GET_MODE (x))
   && TRULY_NOOP_TRUNCATION (GET_MODE_BITSIZE (mode),
        GET_MODE_BITSIZE (GET_MODE (x)))
   && ! no_new_pseudos)
 return gen_lowpart_general (mode, force_reg (GET_MODE (x), x));

      if (WORDS_BIG_ENDIAN)
 offset = (MAX (GET_MODE_SIZE (GET_MODE (x)), UNITS_PER_WORD)
    - MAX (GET_MODE_SIZE (mode), UNITS_PER_WORD));

      if (BYTES_BIG_ENDIAN)


 offset -= (MIN (UNITS_PER_WORD, GET_MODE_SIZE (mode))
     - MIN (UNITS_PER_WORD, GET_MODE_SIZE (GET_MODE (x))));

      return adjust_address (x, mode, offset);
    }
}
