
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;


 int dont_repeat () ;
 int pa64_solib_add (char*,int,struct target_ops*,int) ;

__attribute__((used)) static void
pa64_solib_sharedlibrary_command (char *args, int from_tty)
{
  dont_repeat ();
  pa64_solib_add (args, from_tty, (struct target_ops *) 0, 1);
}
