
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf_unfiltered (char*) ;

__attribute__((used)) static void
set_thread_cmd (char *args, int from_tty)
{
  printf_unfiltered ("\"set thread\" must be followed by the name of a thread property, or \"default\".\n");
}
