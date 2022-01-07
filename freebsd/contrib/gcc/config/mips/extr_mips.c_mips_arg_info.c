
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct mips_arg_info {int fpr_p; int reg_offset; int stack_offset; scalar_t__ reg_words; scalar_t__ stack_words; } ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_3__ {int arg_number; int num_gprs; int num_fprs; int stack_words; int gp_reg_found; } ;
typedef TYPE_1__ CUMULATIVE_ARGS ;







 scalar_t__ BITS_PER_WORD ;
 int FLOAT_TYPE_P (scalar_t__) ;
 scalar_t__ FUNCTION_ARG_BOUNDARY (int,scalar_t__) ;
 int GET_MODE_CLASS (int) ;
 unsigned int GET_MODE_SIZE (int) ;
 unsigned int GET_MODE_UNIT_SIZE (int) ;
 int MAX_ARGS_IN_REGISTERS ;
 scalar_t__ MIN (unsigned int,unsigned int) ;
 int MODE_COMPLEX_FLOAT ;
 int MODE_FLOAT ;
 int MODE_VECTOR_FLOAT ;
 int SCALAR_FLOAT_TYPE_P (scalar_t__) ;
 unsigned int UNITS_PER_FPVALUE ;
 unsigned int UNITS_PER_WORD ;
 int VECTOR_FLOAT_TYPE_P (scalar_t__) ;
 int gcc_unreachable () ;
 unsigned int int_size_in_bytes (scalar_t__) ;
 int mips_abi ;

__attribute__((used)) static void
mips_arg_info (const CUMULATIVE_ARGS *cum, enum machine_mode mode,
        tree type, int named, struct mips_arg_info *info)
{
  bool doubleword_aligned_p;
  unsigned int num_bytes, num_words, max_regs;


  num_bytes = type ? int_size_in_bytes (type) : GET_MODE_SIZE (mode);
  num_words = (num_bytes + UNITS_PER_WORD - 1) / UNITS_PER_WORD;






  switch (mips_abi)
    {
    case 130:


      info->fpr_p = ((GET_MODE_CLASS (mode) == MODE_FLOAT
        || GET_MODE_CLASS (mode) == MODE_VECTOR_FLOAT)
       && GET_MODE_SIZE (mode) <= UNITS_PER_FPVALUE);
      break;

    case 132:
    case 128:



      info->fpr_p = (!cum->gp_reg_found
       && cum->arg_number < 2
       && (type == 0 || SCALAR_FLOAT_TYPE_P (type)
    || VECTOR_FLOAT_TYPE_P (type))
       && (GET_MODE_CLASS (mode) == MODE_FLOAT
    || GET_MODE_CLASS (mode) == MODE_VECTOR_FLOAT)
       && GET_MODE_SIZE (mode) <= UNITS_PER_FPVALUE);
      break;

    case 129:
    case 131:


      info->fpr_p = (named
       && (type == 0 || FLOAT_TYPE_P (type))
       && (GET_MODE_CLASS (mode) == MODE_FLOAT
    || GET_MODE_CLASS (mode) == MODE_COMPLEX_FLOAT
    || GET_MODE_CLASS (mode) == MODE_VECTOR_FLOAT)
       && GET_MODE_UNIT_SIZE (mode) <= UNITS_PER_FPVALUE);
      if (info->fpr_p
   && GET_MODE_CLASS (mode) == MODE_COMPLEX_FLOAT
   && GET_MODE_UNIT_SIZE (mode) < UNITS_PER_FPVALUE)
 {
   if (cum->num_gprs >= MAX_ARGS_IN_REGISTERS - 1)
     info->fpr_p = 0;
   else
     num_words = 2;
 }
      break;

    default:
      gcc_unreachable ();
    }


  doubleword_aligned_p = FUNCTION_ARG_BOUNDARY (mode, type) > BITS_PER_WORD;




  info->reg_offset = (mips_abi == 130 && info->fpr_p
        ? cum->num_fprs
        : cum->num_gprs);


  if (doubleword_aligned_p)
    info->reg_offset += info->reg_offset & 1;


  info->stack_offset = cum->stack_words;
  if (doubleword_aligned_p)
    info->stack_offset += info->stack_offset & 1;

  max_regs = MAX_ARGS_IN_REGISTERS - info->reg_offset;


  info->reg_words = MIN (num_words, max_regs);
  info->stack_words = num_words - info->reg_words;
}
