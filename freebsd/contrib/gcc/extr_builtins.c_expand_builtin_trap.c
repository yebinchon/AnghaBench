
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HAVE_trap ;
 int LCT_NORETURN ;
 int VOIDmode ;
 int abort_libfunc ;
 int emit_barrier () ;
 int emit_insn (int ) ;
 int emit_library_call (int ,int ,int ,int ) ;
 int gen_trap () ;

void
expand_builtin_trap (void)
{





    emit_library_call (abort_libfunc, LCT_NORETURN, VOIDmode, 0);
  emit_barrier ();
}
