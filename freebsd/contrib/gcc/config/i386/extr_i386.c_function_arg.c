
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_3__ {int sse_regno; int nregs; size_t regno; int float_in_sse; int mmx_regno; int words; int mmx_nregs; int warn_mmx; int sse_nregs; int warn_sse; int fastcall; scalar_t__ maybe_vaarg; } ;
typedef TYPE_1__ CUMULATIVE_ARGS ;


 int AGGREGATE_TYPE_P (int ) ;



 int FIRST_MMX_REG ;
 int FIRST_SSE_REG ;
 scalar_t__ GEN_INT (int) ;
 char* GET_MODE_NAME (int) ;
 scalar_t__ GET_MODE_SIZE (int) ;

 scalar_t__ NULL_RTX ;



 int SSE_REGPARM_MAX ;
 scalar_t__ TARGET_64BIT ;
 scalar_t__ TARGET_DEBUG_ARG ;
 int TARGET_MMX ;
 int TARGET_SSE ;

 scalar_t__ TREE_CODE (int ) ;
 int UNITS_PER_WORD ;
 scalar_t__ VECTOR_TYPE ;
 int VOIDmode ;
 scalar_t__ constm1_rtx ;
 scalar_t__ construct_container (int,int,int ,int ,int,int ,int *,int) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ gen_reg_or_parallel (int,int,int) ;
 scalar_t__ gen_rtx_REG (int,int) ;
 int int_size_in_bytes (int ) ;
 int print_simple_rtl (int ,scalar_t__) ;
 int stderr ;
 int type_natural_mode (int ) ;
 int warning (int ,char*) ;
 int * x86_64_int_parameter_registers ;

rtx
function_arg (CUMULATIVE_ARGS *cum, enum machine_mode orig_mode,
       tree type, int named)
{
  enum machine_mode mode = orig_mode;
  rtx ret = NULL_RTX;
  int bytes =
    (mode == 145) ? int_size_in_bytes (type) : (int) GET_MODE_SIZE (mode);
  int words = (bytes + UNITS_PER_WORD - 1) / UNITS_PER_WORD;
  static bool warnedsse, warnedmmx;



  if (type && TREE_CODE (type) == VECTOR_TYPE)
    mode = type_natural_mode (type);




  if (mode == VOIDmode)
    {
      if (TARGET_64BIT)
 return GEN_INT (cum->maybe_vaarg
   ? (cum->sse_nregs < 0
      ? SSE_REGPARM_MAX
      : cum->sse_regno)
   : -1);
      else
 return constm1_rtx;
    }
  if (TARGET_64BIT)
    ret = construct_container (mode, orig_mode, type, 0, cum->nregs,
          cum->sse_nregs,
          &x86_64_int_parameter_registers [cum->regno],
          cum->sse_regno);
  else
    switch (mode)
      {

      default:
 break;

      case 145:
 if (bytes < 0)
   break;

      case 143:
      case 139:
      case 142:
      case 141:
 if (words <= cum->nregs)
   {
     int regno = cum->regno;



     if (cum->fastcall)
       {
         if (mode == 145 || mode == 143)
           break;


         if (regno == 0)
    regno = 2;
       }
     ret = gen_rtx_REG (mode, regno);
   }
 break;
      case 144:
 if (cum->float_in_sse < 2)
   break;
      case 140:
 if (cum->float_in_sse < 1)
   break;

      case 138:
      case 137:
      case 129:
      case 130:
      case 135:
      case 131:
      case 136:
 if (!type || !AGGREGATE_TYPE_P (type))
   {
     if (!TARGET_SSE && !warnedsse && cum->warn_sse)
       {
  warnedsse = 1;
  warning (0, "SSE vector argument without SSE enabled "
    "changes the ABI");
       }
     if (cum->sse_nregs)
       ret = gen_reg_or_parallel (mode, orig_mode,
      cum->sse_regno + FIRST_SSE_REG);
   }
 break;
      case 128:
      case 132:
      case 133:
      case 134:
 if (!type || !AGGREGATE_TYPE_P (type))
   {
     if (!TARGET_MMX && !warnedmmx && cum->warn_mmx)
       {
  warnedmmx = 1;
  warning (0, "MMX vector argument without MMX enabled "
    "changes the ABI");
       }
     if (cum->mmx_nregs)
       ret = gen_reg_or_parallel (mode, orig_mode,
      cum->mmx_regno + FIRST_MMX_REG);
   }
 break;
      }

  if (TARGET_DEBUG_ARG)
    {
      fprintf (stderr,
        "function_arg (size=%d, wds=%2d, nregs=%d, mode=%4s, named=%d, ",
        words, cum->words, cum->nregs, GET_MODE_NAME (mode), named);

      if (ret)
 print_simple_rtl (stderr, ret);
      else
 fprintf (stderr, ", stack");

      fprintf (stderr, " )\n");
    }

  return ret;
}
