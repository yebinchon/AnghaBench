
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf {int default_thread_pause_sc; scalar_t__ pause_sc; } ;


 int check_empty (char*,char*) ;
 struct inf* cur_inf () ;
 int printf_unfiltered (char*,char*,char*) ;

__attribute__((used)) static void
show_thread_default_pause_cmd (char *args, int from_tty)
{
  struct inf *inf = cur_inf ();
  int sc = inf->default_thread_pause_sc;
  check_empty (args, "show thread default pause");
  printf_unfiltered ("New threads %s suspended while gdb has control%s.\n",
       sc ? "are" : "aren't",
       !sc && inf->pause_sc ? " (but the task is)" : "");
}
