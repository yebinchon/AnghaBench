
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ USING_SJLJ_EXCEPTIONS ;
 int c_eh_initialized_p ;
 int default_init_unwind_resume_libfunc () ;
 int eh_personality_libfunc ;
 int flag_exceptions ;
 int init_one_libfunc (char*) ;
 int using_eh_for_cleanups () ;

void
c_maybe_initialize_eh (void)
{
  if (!flag_exceptions || c_eh_initialized_p)
    return;

  c_eh_initialized_p = 1;
  eh_personality_libfunc
    = init_one_libfunc (USING_SJLJ_EXCEPTIONS
   ? "__gcc_personality_sj0"
   : "__gcc_personality_v0");
  default_init_unwind_resume_libfunc ();
  using_eh_for_cleanups ();
}
