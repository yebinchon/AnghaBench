
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {scalar_t__ hook_in; } ;



__attribute__((used)) static void
clear_hook_in_cleanup (void *data)
{
  struct cmd_list_element *c = data;
  c->hook_in = 0;
}
