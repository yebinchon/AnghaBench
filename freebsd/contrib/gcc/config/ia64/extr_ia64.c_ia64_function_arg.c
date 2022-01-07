
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_4__ {int words; int fp_regs; scalar_t__ prototype; } ;
typedef TYPE_1__ CUMULATIVE_ARGS ;


 scalar_t__ AGGREGATE_TYPE_P (scalar_t__) ;
 int AR_ARG_FIRST ;
 int BLKmode ;
 scalar_t__ BYTES_BIG_ENDIAN ;
 int DImode ;
 int FLOAT_MODE_P (int) ;
 int FR_ARG_FIRST ;
 int GEN_INT (int) ;
 void* GET_MODE_SIZE (int) ;
 int GR_ARG_FIRST ;
 int MAX_ARGUMENT_SLOTS ;
 int SFmode ;
 int SImode ;
 int TCmode ;
 int TFmode ;
 int UNITS_PER_WORD ;
 int VOIDmode ;
 int const0_rtx ;
 int gen_rtvec (int,int ,...) ;
 int gen_rtvec_v (int,int *) ;
 int gen_rtx_EXPR_LIST (int,int ,int ) ;
 int gen_rtx_PARALLEL (int,int ) ;
 int gen_rtx_REG (int,int) ;
 int hfa_element_mode (scalar_t__,int ) ;
 int ia64_function_arg_offset (TYPE_1__*,scalar_t__,int) ;
 int ia64_function_arg_words (scalar_t__,int) ;
 void* int_size_in_bytes (scalar_t__) ;

rtx
ia64_function_arg (CUMULATIVE_ARGS *cum, enum machine_mode mode, tree type,
     int named, int incoming)
{
  int basereg = (incoming ? GR_ARG_FIRST : AR_ARG_FIRST);
  int words = ia64_function_arg_words (type, mode);
  int offset = ia64_function_arg_offset (cum, type, words);
  enum machine_mode hfa_mode = VOIDmode;


  if (cum->words + offset >= MAX_ARGUMENT_SLOTS)
    return 0;


  if (type)
    hfa_mode = hfa_element_mode (type, 0);



  if (hfa_mode != VOIDmode && (! cum->prototype || named))
    {
      rtx loc[16];
      int i = 0;
      int fp_regs = cum->fp_regs;
      int int_regs = cum->words + offset;
      int hfa_size = GET_MODE_SIZE (hfa_mode);
      int byte_size;
      int args_byte_size;
      byte_size = ((mode == BLKmode)
     ? int_size_in_bytes (type) : GET_MODE_SIZE (mode));
      args_byte_size = int_regs * UNITS_PER_WORD;
      offset = 0;
      for (; (offset < byte_size && fp_regs < MAX_ARGUMENT_SLOTS
       && args_byte_size < (MAX_ARGUMENT_SLOTS * UNITS_PER_WORD)); i++)
 {
   loc[i] = gen_rtx_EXPR_LIST (VOIDmode,
          gen_rtx_REG (hfa_mode, (FR_ARG_FIRST
             + fp_regs)),
          GEN_INT (offset));
   offset += hfa_size;
   args_byte_size += hfa_size;
   fp_regs++;
 }


      if (! cum->prototype)
 offset = 0;


      else if (byte_size != offset)
 int_regs += offset / UNITS_PER_WORD;



      for (; offset < byte_size && int_regs < MAX_ARGUMENT_SLOTS; i++)
 {
   enum machine_mode gr_mode = DImode;
   unsigned int gr_size;






   if (offset & 0x4)
     gr_mode = SImode;



   else if (byte_size - offset == 4)
     gr_mode = SImode;

   loc[i] = gen_rtx_EXPR_LIST (VOIDmode,
          gen_rtx_REG (gr_mode, (basereg
            + int_regs)),
          GEN_INT (offset));

   gr_size = GET_MODE_SIZE (gr_mode);
   offset += gr_size;
   if (gr_size == UNITS_PER_WORD
       || (gr_size < UNITS_PER_WORD && offset % UNITS_PER_WORD == 0))
     int_regs++;
   else if (gr_size > UNITS_PER_WORD)
     int_regs += gr_size / UNITS_PER_WORD;
 }
      return gen_rtx_PARALLEL (mode, gen_rtvec_v (i, loc));
    }




  else if (mode == TFmode || mode == TCmode
    || (! FLOAT_MODE_P (mode) || cum->fp_regs == MAX_ARGUMENT_SLOTS))
    {
      int byte_size = ((mode == BLKmode)
                       ? int_size_in_bytes (type) : GET_MODE_SIZE (mode));
      if (BYTES_BIG_ENDIAN
 && (mode == BLKmode || (type && AGGREGATE_TYPE_P (type)))
 && byte_size < UNITS_PER_WORD
 && byte_size > 0)
 {
   rtx gr_reg = gen_rtx_EXPR_LIST (VOIDmode,
       gen_rtx_REG (DImode,
             (basereg + cum->words
       + offset)),
       const0_rtx);
   return gen_rtx_PARALLEL (mode, gen_rtvec (1, gr_reg));
 }
      else
 return gen_rtx_REG (mode, basereg + cum->words + offset);

    }



  else if (cum->prototype)
    {
      if (named)
 return gen_rtx_REG (mode, FR_ARG_FIRST + cum->fp_regs);



      else if (BYTES_BIG_ENDIAN && mode == SFmode)
 return gen_rtx_PARALLEL (mode,
   gen_rtvec (1,
                   gen_rtx_EXPR_LIST (VOIDmode,
       gen_rtx_REG (DImode, basereg + cum->words + offset),
          const0_rtx)));
      else
 return gen_rtx_REG (mode, basereg + cum->words + offset);
    }


  else
    {

      enum machine_mode inner_mode =
 (BYTES_BIG_ENDIAN && mode == SFmode) ? DImode : mode;

      rtx fp_reg = gen_rtx_EXPR_LIST (VOIDmode,
          gen_rtx_REG (mode, (FR_ARG_FIRST
         + cum->fp_regs)),
          const0_rtx);
      rtx gr_reg = gen_rtx_EXPR_LIST (VOIDmode,
          gen_rtx_REG (inner_mode,
         (basereg + cum->words
          + offset)),
          const0_rtx);

      return gen_rtx_PARALLEL (mode, gen_rtvec (2, fp_reg, gr_reg));
    }
}
