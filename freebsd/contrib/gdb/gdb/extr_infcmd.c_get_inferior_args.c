
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_gdbarch ;
 char* gdbarch_construct_inferior_arguments (int ,scalar_t__,int ) ;
 scalar_t__ inferior_argc ;
 char* inferior_args ;
 int inferior_argv ;
 char* set_inferior_args (char*) ;
 int xfree (char*) ;
 char* xstrdup (char*) ;

char *
get_inferior_args (void)
{
  if (inferior_argc != 0)
    {
      char *n, *old;

      n = gdbarch_construct_inferior_arguments (current_gdbarch,
      inferior_argc, inferior_argv);
      old = set_inferior_args (n);
      xfree (old);
    }

  if (inferior_args == ((void*)0))
    inferior_args = xstrdup ("");

  return inferior_args;
}
