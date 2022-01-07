
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct sparc_args {scalar_t__ libcall_p; scalar_t__ prototype_p; } ;
typedef int rtx ;
typedef enum mode_class { ____Placeholder_mode_class } mode_class ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int HOST_WIDE_INT ;


 scalar_t__ AGGREGATE_TYPE_P (scalar_t__) ;
 int BITS_PER_UNIT ;
 int BLKmode ;
 int GET_MODE_CLASS (int) ;
 int MODE_COMPLEX_FLOAT ;
 int MODE_FLOAT ;
 int MODE_INT ;
 int NULL_RTX ;
 scalar_t__ RECORD_TYPE ;
 int SPARC_FP_ARG_FIRST ;
 scalar_t__ SPARC_FP_REG_P (int) ;
 int SPARC_INCOMING_INT_ARG_FIRST ;
 int SPARC_INT_ARG_MAX ;
 int SPARC_OUTGOING_INT_ARG_FIRST ;
 scalar_t__ TARGET_ARCH32 ;
 scalar_t__ TARGET_ARCH64 ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 int TYPE_MODE (int ) ;
 scalar_t__ UNION_TYPE ;
 scalar_t__ VECTOR_TYPE ;
 int VOIDmode ;
 int const0_rtx ;
 int function_arg_record_value (scalar_t__,int,int,int,int) ;
 int function_arg_slotno (struct sparc_args const*,int,scalar_t__,int,int,int*,int*) ;
 int function_arg_union_value (int,int,int,int) ;
 int function_arg_vector_value (int,int ,int) ;
 int gcc_assert (int) ;
 int gen_rtvec (int,int ,int ) ;
 int gen_rtx_EXPR_LIST (int ,int ,int ) ;
 int gen_rtx_PARALLEL (int,int ) ;
 int gen_rtx_REG (int,int) ;
 int int_size_in_bytes (scalar_t__) ;
 int mode_for_size (int,int ,int ) ;

rtx
function_arg (const struct sparc_args *cum, enum machine_mode mode,
       tree type, int named, int incoming_p)
{
  int regbase = (incoming_p
   ? SPARC_INCOMING_INT_ARG_FIRST
   : SPARC_OUTGOING_INT_ARG_FIRST);
  int slotno, regno, padding;
  enum mode_class mclass = GET_MODE_CLASS (mode);

  slotno = function_arg_slotno (cum, mode, type, named, incoming_p,
    &regno, &padding);
  if (slotno == -1)
    return 0;



  if (type && TREE_CODE (type) == VECTOR_TYPE)
    {
      HOST_WIDE_INT size = int_size_in_bytes (type);
      gcc_assert ((TARGET_ARCH32 && size <= 8)
    || (TARGET_ARCH64 && size <= 16));

      if (mode == BLKmode)
 return function_arg_vector_value (size,
       TYPE_MODE (TREE_TYPE (type)),
       SPARC_FP_ARG_FIRST + 2*slotno);
      else
 mclass = MODE_FLOAT;
    }

  if (TARGET_ARCH32)
    return gen_rtx_REG (mode, regno);



  if (type && TREE_CODE (type) == RECORD_TYPE)
    {
      HOST_WIDE_INT size = int_size_in_bytes (type);
      gcc_assert (size <= 16);

      return function_arg_record_value (type, mode, slotno, named, regbase);
    }


  else if (type && TREE_CODE (type) == UNION_TYPE)
    {
      HOST_WIDE_INT size = int_size_in_bytes (type);
      gcc_assert (size <= 16);

      return function_arg_union_value (size, mode, slotno, regno);
    }





  else if ((mclass == MODE_FLOAT || mclass == MODE_COMPLEX_FLOAT)
    && SPARC_FP_REG_P (regno))
    {
      rtx reg = gen_rtx_REG (mode, regno);
      if (cum->prototype_p || cum->libcall_p)
 {
     return reg;
 }
      else
 {
   rtx v0, v1;

   if ((regno - SPARC_FP_ARG_FIRST) < SPARC_INT_ARG_MAX * 2)
     {
       int intreg;




       if (incoming_p)
  return reg;

       intreg = (SPARC_OUTGOING_INT_ARG_FIRST
   + (regno - SPARC_FP_ARG_FIRST) / 2);

       v0 = gen_rtx_EXPR_LIST (VOIDmode, reg, const0_rtx);
       v1 = gen_rtx_EXPR_LIST (VOIDmode, gen_rtx_REG (mode, intreg),
          const0_rtx);
       return gen_rtx_PARALLEL (mode, gen_rtvec (2, v0, v1));
     }
   else
     {
       v0 = gen_rtx_EXPR_LIST (VOIDmode, NULL_RTX, const0_rtx);
       v1 = gen_rtx_EXPR_LIST (VOIDmode, reg, const0_rtx);
       return gen_rtx_PARALLEL (mode, gen_rtvec (2, v0, v1));
     }
 }
    }



  else if (type && AGGREGATE_TYPE_P (type))
    {
      HOST_WIDE_INT size = int_size_in_bytes (type);
      gcc_assert (size <= 16);

      mode = mode_for_size (size * BITS_PER_UNIT, MODE_INT, 0);
    }

  return gen_rtx_REG (mode, regno);
}
