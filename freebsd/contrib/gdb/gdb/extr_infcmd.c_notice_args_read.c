
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 int get_inferior_args () ;

__attribute__((used)) static void
notice_args_read (char *args, int from_tty, struct cmd_list_element *c)
{

  get_inferior_args ();
}
