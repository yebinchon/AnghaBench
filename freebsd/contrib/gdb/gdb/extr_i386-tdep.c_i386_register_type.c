
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct gdbarch {int dummy; } ;


 int I386_EBP_REGNUM ;
 int I386_EIP_REGNUM ;
 int I386_ESP_REGNUM ;
 struct type* builtin_type_i387_ext ;
 struct type* builtin_type_int ;
 struct type* builtin_type_vec128i ;
 struct type* builtin_type_vec64i ;
 int builtin_type_void ;
 scalar_t__ i386_fp_regnum_p (int) ;
 scalar_t__ i386_mmx_regnum_p (struct gdbarch*,int) ;
 scalar_t__ i386_sse_regnum_p (struct gdbarch*,int) ;
 struct type* lookup_pointer_type (int ) ;

__attribute__((used)) static struct type *
i386_register_type (struct gdbarch *gdbarch, int regnum)
{
  if (regnum == I386_EIP_REGNUM
      || regnum == I386_EBP_REGNUM || regnum == I386_ESP_REGNUM)
    return lookup_pointer_type (builtin_type_void);

  if (i386_fp_regnum_p (regnum))
    return builtin_type_i387_ext;

  if (i386_sse_regnum_p (gdbarch, regnum))
    return builtin_type_vec128i;

  if (i386_mmx_regnum_p (gdbarch, regnum))
    return builtin_type_vec64i;

  return builtin_type_int;
}
