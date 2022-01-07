
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
struct gdbarch {int dummy; } ;
typedef int CORE_ADDR ;


 scalar_t__ DEPRECATED_FIX_CALL_DUMMY_P () ;
 int gdbarch_push_dummy_call_p (struct gdbarch*) ;
 int gdbarch_push_dummy_code (struct gdbarch*,int ,int ,int,struct value**,int,struct type*,int *,int *) ;
 scalar_t__ gdbarch_push_dummy_code_p (struct gdbarch*) ;
 int generic_push_dummy_code (struct gdbarch*,int ,int ,int,struct value**,int,struct type*,int *,int *) ;
 int legacy_push_dummy_code (struct gdbarch*,int ,int ,int,struct value**,int,struct type*,int *,int *) ;

__attribute__((used)) static CORE_ADDR
push_dummy_code (struct gdbarch *gdbarch,
   CORE_ADDR sp, CORE_ADDR funaddr, int using_gcc,
   struct value **args, int nargs,
   struct type *value_type,
   CORE_ADDR *real_pc, CORE_ADDR *bp_addr)
{
  if (gdbarch_push_dummy_code_p (gdbarch))
    return gdbarch_push_dummy_code (gdbarch, sp, funaddr, using_gcc,
        args, nargs, value_type, real_pc, bp_addr);
  else if (DEPRECATED_FIX_CALL_DUMMY_P ()
    && !gdbarch_push_dummy_call_p (gdbarch))
    return legacy_push_dummy_code (gdbarch, sp, funaddr, using_gcc,
       args, nargs, value_type, real_pc, bp_addr);
  else
    return generic_push_dummy_code (gdbarch, sp, funaddr, using_gcc,
        args, nargs, value_type, real_pc, bp_addr);
}
