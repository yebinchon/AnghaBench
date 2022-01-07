
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmd_show_list (int ,int,char*) ;
 int showarmcmdlist ;

__attribute__((used)) static void
show_arm_command (char *args, int from_tty)
{
  cmd_show_list (showarmcmdlist, from_tty, "");
}
