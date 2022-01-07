
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct gdbarch {int dummy; } ;


 int ALPHA_FP0_REGNUM ;
 int ALPHA_GP_REGNUM ;
 int ALPHA_PC_REGNUM ;
 int ALPHA_SP_REGNUM ;
 struct type* builtin_type_ieee_double_little ;
 struct type* builtin_type_int64 ;
 struct type* builtin_type_void_data_ptr ;
 struct type* builtin_type_void_func_ptr ;

__attribute__((used)) static struct type *
alpha_register_type (struct gdbarch *gdbarch, int regno)
{
  if (regno == ALPHA_SP_REGNUM || regno == ALPHA_GP_REGNUM)
    return builtin_type_void_data_ptr;
  if (regno == ALPHA_PC_REGNUM)
    return builtin_type_void_func_ptr;



  if (regno >= ALPHA_FP0_REGNUM && regno < ALPHA_FP0_REGNUM + 31)
    return builtin_type_ieee_double_little;

  return builtin_type_int64;
}
