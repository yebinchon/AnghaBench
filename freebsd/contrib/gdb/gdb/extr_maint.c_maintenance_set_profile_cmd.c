
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 int error (char*) ;

__attribute__((used)) static void
maintenance_set_profile_cmd (char *args, int from_tty, struct cmd_list_element *c)
{
  error ("Profiling support is not available on this system.");
}
