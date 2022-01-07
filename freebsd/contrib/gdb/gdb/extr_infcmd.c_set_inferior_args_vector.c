
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inferior_argc ;
 char** inferior_argv ;

void
set_inferior_args_vector (int argc, char **argv)
{
  inferior_argc = argc;
  inferior_argv = argv;
}
