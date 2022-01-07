
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmd_show_list (int ,int,char*) ;
 int showchecklist ;

__attribute__((used)) static void
show_check (char *ignore, int from_tty)
{
  cmd_show_list (showchecklist, from_tty, "");
}
