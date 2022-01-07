
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf {scalar_t__ pause_sc; scalar_t__ task; } ;


 int check_empty (char*,char*) ;
 struct inf* cur_inf () ;
 int printf_unfiltered (char*,char*) ;

__attribute__((used)) static void
show_task_pause_cmd (char *args, int from_tty)
{
  struct inf *inf = cur_inf ();
  check_empty (args, "show task pause");
  printf_unfiltered ("The inferior task %s suspended while gdb has control.\n",
       inf->task
       ? (inf->pause_sc == 0 ? "isn't" : "is")
       : (inf->pause_sc == 0 ? "won't be" : "will be"));
}
