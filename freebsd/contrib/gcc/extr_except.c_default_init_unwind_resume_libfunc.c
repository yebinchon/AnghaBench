
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ USING_SJLJ_EXCEPTIONS ;
 int init_one_libfunc (char*) ;
 int unwind_resume_libfunc ;

void
default_init_unwind_resume_libfunc (void)
{

  unwind_resume_libfunc =
    init_one_libfunc ( USING_SJLJ_EXCEPTIONS ? "_Unwind_SjLj_Resume"
          : "_Unwind_Resume");
}
