
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf {int pause_sc; } ;


 struct inf* cur_inf () ;
 int inf_suspend (struct inf*) ;
 int parse_bool_arg (char*,char*) ;

__attribute__((used)) static void
set_task_pause_cmd (char *args, int from_tty)
{
  struct inf *inf = cur_inf ();
  int old_sc = inf->pause_sc;

  inf->pause_sc = parse_bool_arg (args, "set task pause");

  if (old_sc == 0 && inf->pause_sc != 0)


    inf_suspend (inf);
}
