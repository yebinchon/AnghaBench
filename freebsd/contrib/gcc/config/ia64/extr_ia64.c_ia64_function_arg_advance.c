
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_4__ {int words; int fp_regs; int int_regs; scalar_t__ prototype; } ;
typedef TYPE_1__ CUMULATIVE_ARGS ;


 int BLKmode ;
 int FLOAT_MODE_P (int) ;
 scalar_t__ GET_MODE_CLASS (int) ;
 int GET_MODE_SIZE (int) ;
 int MAX_ARGUMENT_SLOTS ;
 scalar_t__ MODE_COMPLEX_FLOAT ;
 int TCmode ;
 int TFmode ;
 int UNITS_PER_WORD ;
 int VOIDmode ;
 int hfa_element_mode (scalar_t__,int ) ;
 int ia64_function_arg_offset (TYPE_1__*,scalar_t__,int) ;
 int ia64_function_arg_words (scalar_t__,int) ;
 int int_size_in_bytes (scalar_t__) ;

void
ia64_function_arg_advance (CUMULATIVE_ARGS *cum, enum machine_mode mode,
      tree type, int named)
{
  int words = ia64_function_arg_words (type, mode);
  int offset = ia64_function_arg_offset (cum, type, words);
  enum machine_mode hfa_mode = VOIDmode;


  if (cum->words >= MAX_ARGUMENT_SLOTS)
    return;

  cum->words += words + offset;


  if (type)
    hfa_mode = hfa_element_mode (type, 0);



  if (hfa_mode != VOIDmode && (! cum->prototype || named))
    {
      int fp_regs = cum->fp_regs;

      int int_regs = cum->words - words;
      int hfa_size = GET_MODE_SIZE (hfa_mode);
      int byte_size;
      int args_byte_size;
      byte_size = ((mode == BLKmode)
     ? int_size_in_bytes (type) : GET_MODE_SIZE (mode));
      args_byte_size = int_regs * UNITS_PER_WORD;
      offset = 0;
      for (; (offset < byte_size && fp_regs < MAX_ARGUMENT_SLOTS
       && args_byte_size < (MAX_ARGUMENT_SLOTS * UNITS_PER_WORD));)
 {
   offset += hfa_size;
   args_byte_size += hfa_size;
   fp_regs++;
 }

      cum->fp_regs = fp_regs;
    }




  else if (mode == TFmode || mode == TCmode
           || (! FLOAT_MODE_P (mode) || cum->fp_regs == MAX_ARGUMENT_SLOTS))
    cum->int_regs = cum->words;



  else if (cum->prototype)
    {
      if (! named)
 cum->int_regs = cum->words;
      else

 cum->fp_regs += (GET_MODE_CLASS (mode) == MODE_COMPLEX_FLOAT ? 2 : 1);
    }


  else
    {

      cum->fp_regs += (GET_MODE_CLASS (mode) == MODE_COMPLEX_FLOAT ? 2 : 1);
      cum->int_regs = cum->words;
    }
}
