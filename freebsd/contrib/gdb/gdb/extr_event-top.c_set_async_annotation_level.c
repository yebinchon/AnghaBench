
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 int change_annotation_level () ;

void
set_async_annotation_level (char *args, int from_tty, struct cmd_list_element *c)
{
  change_annotation_level ();
}
