
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int CUMULATIVE_ARGS ;


 scalar_t__ AGGREGATE_TYPE_P (scalar_t__) ;
 int BLKmode ;
 scalar_t__ GET_MODE_CLASS (int) ;
 int GET_MODE_SIZE (int) ;
 scalar_t__ MODE_COMPLEX_FLOAT ;
 scalar_t__ MODE_COMPLEX_INT ;
 int ROUND_ADVANCE (int) ;
 int SPARC_FP_ARG_MAX ;
 int SPARC_INT_ARG_MAX ;
 scalar_t__ TARGET_ARCH32 ;
 scalar_t__ TARGET_FPU ;
 int UNITS_PER_WORD ;
 int function_arg_slotno (int *,int,scalar_t__,int,int ,int*,int*) ;
 int int_size_in_bytes (scalar_t__) ;

__attribute__((used)) static int
sparc_arg_partial_bytes (CUMULATIVE_ARGS *cum, enum machine_mode mode,
    tree type, bool named)
{
  int slotno, regno, padding;


  slotno = function_arg_slotno (cum, mode, type, named, 0, &regno, &padding);

  if (slotno == -1)
    return 0;

  if (TARGET_ARCH32)
    {
      if ((slotno + (mode == BLKmode
       ? ROUND_ADVANCE (int_size_in_bytes (type))
       : ROUND_ADVANCE (GET_MODE_SIZE (mode))))
   > SPARC_INT_ARG_MAX)
 return (SPARC_INT_ARG_MAX - slotno) * UNITS_PER_WORD;
    }
  else
    {




      if (type && AGGREGATE_TYPE_P (type))
 {
   int size = int_size_in_bytes (type);

   if (size > UNITS_PER_WORD
       && slotno == SPARC_INT_ARG_MAX - 1)
     return UNITS_PER_WORD;
 }
      else if (GET_MODE_CLASS (mode) == MODE_COMPLEX_INT
        || (GET_MODE_CLASS (mode) == MODE_COMPLEX_FLOAT
     && ! (TARGET_FPU && named)))
 {

   if (GET_MODE_SIZE (mode) > UNITS_PER_WORD
       && slotno == SPARC_INT_ARG_MAX - 1)
     return UNITS_PER_WORD;
 }
      else if (GET_MODE_CLASS (mode) == MODE_COMPLEX_FLOAT)
 {
   if ((slotno + GET_MODE_SIZE (mode) / UNITS_PER_WORD)
       > SPARC_FP_ARG_MAX)
     return UNITS_PER_WORD;
 }
    }

  return 0;
}
