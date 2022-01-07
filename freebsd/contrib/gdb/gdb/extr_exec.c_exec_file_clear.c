
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exec_ops ;
 int printf_unfiltered (char*) ;
 int unpush_target (int *) ;

void
exec_file_clear (int from_tty)
{

  unpush_target (&exec_ops);

  if (from_tty)
    printf_unfiltered ("No executable file now.\n");
}
