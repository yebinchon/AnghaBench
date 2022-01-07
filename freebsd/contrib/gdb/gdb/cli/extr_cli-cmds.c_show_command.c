
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmd_show_list (int ,int,char*) ;
 int showlist ;

__attribute__((used)) static void
show_command (char *arg, int from_tty)
{
  cmd_show_list (showlist, from_tty, "");
}
