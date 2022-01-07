
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 int * gnutarget ;
 int * gnutarget_string ;
 scalar_t__ strcmp (int *,char*) ;

__attribute__((used)) static void
set_gnutarget_command (char *ignore, int from_tty, struct cmd_list_element *c)
{
  if (strcmp (gnutarget_string, "auto") == 0)
    gnutarget = ((void*)0);
  else
    gnutarget = gnutarget_string;
}
