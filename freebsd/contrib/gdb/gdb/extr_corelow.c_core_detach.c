
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int core_ops ;
 int error (char*) ;
 int printf_filtered (char*) ;
 int reinit_frame_cache () ;
 int unpush_target (int *) ;

__attribute__((used)) static void
core_detach (char *args, int from_tty)
{
  if (args)
    error ("Too many arguments");
  unpush_target (&core_ops);
  reinit_frame_cache ();
  if (from_tty)
    printf_filtered ("No core file now.\n");
}
