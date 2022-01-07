
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int rtx ;
typedef enum mode_class { ____Placeholder_mode_class } mode_class ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int HOST_WIDE_INT ;


 scalar_t__ AGGREGATE_TYPE_P (scalar_t__) ;
 int BITS_PER_UNIT ;
 int BLKmode ;
 int GET_MODE_CLASS (int) ;
 scalar_t__ GET_MODE_SIZE (int) ;
 int MODE_COMPLEX_FLOAT ;
 int MODE_FLOAT ;
 int MODE_INT ;
 scalar_t__ RECORD_TYPE ;
 int SPARC_FP_ARG_FIRST ;
 int SPARC_INCOMING_INT_ARG_FIRST ;
 int SPARC_OUTGOING_INT_ARG_FIRST ;
 scalar_t__ TARGET_ARCH32 ;
 scalar_t__ TARGET_ARCH64 ;
 scalar_t__ TARGET_FPU ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 int TYPE_MODE (int ) ;
 scalar_t__ UNION_TYPE ;
 scalar_t__ UNITS_PER_WORD ;
 scalar_t__ VECTOR_TYPE ;
 int function_arg_record_value (scalar_t__,int,int ,int,int) ;
 int function_arg_union_value (int,int,int ,int) ;
 int function_arg_vector_value (int,int ,int) ;
 int gcc_assert (int) ;
 int gen_rtx_REG (int,int) ;
 int int_size_in_bytes (scalar_t__) ;
 int mode_for_size (int,int,int ) ;
 int word_mode ;

rtx
function_value (tree type, enum machine_mode mode, int incoming_p)
{

  int regbase = (incoming_p
   ? SPARC_OUTGOING_INT_ARG_FIRST
   : SPARC_INCOMING_INT_ARG_FIRST);
  enum mode_class mclass = GET_MODE_CLASS (mode);
  int regno;



  if (type && TREE_CODE (type) == VECTOR_TYPE)
    {
      HOST_WIDE_INT size = int_size_in_bytes (type);
      gcc_assert ((TARGET_ARCH32 && size <= 8)
    || (TARGET_ARCH64 && size <= 32));

      if (mode == BLKmode)
 return function_arg_vector_value (size,
       TYPE_MODE (TREE_TYPE (type)),
       SPARC_FP_ARG_FIRST);
      else
 mclass = MODE_FLOAT;
    }

  if (TARGET_ARCH64 && type)
    {

      if (TREE_CODE (type) == RECORD_TYPE)
 {
   HOST_WIDE_INT size = int_size_in_bytes (type);
   gcc_assert (size <= 32);

   return function_arg_record_value (type, mode, 0, 1, regbase);
 }


      else if (TREE_CODE (type) == UNION_TYPE)
 {
   HOST_WIDE_INT size = int_size_in_bytes (type);
   gcc_assert (size <= 32);

   return function_arg_union_value (size, mode, 0, regbase);
 }


      else if (mclass == MODE_FLOAT || mclass == MODE_COMPLEX_FLOAT)
 ;



      else if (AGGREGATE_TYPE_P (type))
 {


   HOST_WIDE_INT size = int_size_in_bytes (type);
   gcc_assert (size <= 32);

   mode = mode_for_size (size * BITS_PER_UNIT, MODE_INT, 0);
   if (mode == BLKmode)
     return function_arg_union_value (size, mode, 0, regbase);
   else
     mclass = MODE_INT;
 }


      else if (mclass == MODE_INT && GET_MODE_SIZE (mode) < UNITS_PER_WORD)
 mode = word_mode;
    }

  if ((mclass == MODE_FLOAT || mclass == MODE_COMPLEX_FLOAT) && TARGET_FPU)
    regno = SPARC_FP_ARG_FIRST;
  else
    regno = regbase;

  return gen_rtx_REG (mode, regno);
}
