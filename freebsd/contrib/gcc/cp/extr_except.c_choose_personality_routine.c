
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum languages { ____Placeholder_languages } languages ;


 int USING_SJLJ_EXCEPTIONS ;
 int eh_personality_libfunc ;
 int error (char*) ;
 int gcc_unreachable () ;
 int init_one_libfunc (char*) ;



void
choose_personality_routine (enum languages lang)
{
  static enum {
    chose_none,
    chose_cpp,
    chose_java,
    gave_error
  } state;

  switch (state)
    {
    case gave_error:
      return;

    case chose_cpp:
      if (lang != 129)
 goto give_error;
      return;

    case chose_java:
      if (lang != 128)
 goto give_error;
      return;

    case chose_none:
      ;
    }

  switch (lang)
    {
    case 129:
      state = chose_cpp;
      break;

    case 128:
      state = chose_java;
      eh_personality_libfunc = init_one_libfunc (USING_SJLJ_EXCEPTIONS
       ? "__gcj_personality_sj0"
       : "__gcj_personality_v0");
      break;

    default:
      gcc_unreachable ();
    }
  return;

 give_error:
  error ("mixing C++ and Java catches in a single translation unit");
  state = gave_error;
}
