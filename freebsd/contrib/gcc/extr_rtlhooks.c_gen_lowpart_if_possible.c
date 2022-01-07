
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ BYTES_BIG_ENDIAN ;
 scalar_t__ GET_MODE (scalar_t__) ;
 int GET_MODE_SIZE (scalar_t__) ;
 int MAX (int ,int ) ;
 scalar_t__ MEM_P (scalar_t__) ;
 scalar_t__ MIN (int ,int ) ;
 int UNITS_PER_WORD ;
 scalar_t__ VOIDmode ;
 scalar_t__ WORDS_BIG_ENDIAN ;
 int XEXP (scalar_t__,int ) ;
 scalar_t__ adjust_address_nv (scalar_t__,int,int) ;
 scalar_t__ gen_lowpart_SUBREG (int,scalar_t__) ;
 scalar_t__ gen_lowpart_common (int,scalar_t__) ;
 int memory_address_p (int,int ) ;

rtx
gen_lowpart_if_possible (enum machine_mode mode, rtx x)
{
  rtx result = gen_lowpart_common (mode, x);

  if (result)
    return result;
  else if (MEM_P (x))
    {

      int offset = 0;
      rtx new;

      if (WORDS_BIG_ENDIAN)
 offset = (MAX (GET_MODE_SIZE (GET_MODE (x)), UNITS_PER_WORD)
    - MAX (GET_MODE_SIZE (mode), UNITS_PER_WORD));
      if (BYTES_BIG_ENDIAN)


 offset -= (MIN (UNITS_PER_WORD, GET_MODE_SIZE (mode))
     - MIN (UNITS_PER_WORD, GET_MODE_SIZE (GET_MODE (x))));

      new = adjust_address_nv (x, mode, offset);
      if (! memory_address_p (mode, XEXP (new, 0)))
 return 0;

      return new;
    }
  else if (mode != GET_MODE (x) && GET_MODE (x) != VOIDmode)
    return gen_lowpart_SUBREG (mode, x);
  else
    return 0;
}
