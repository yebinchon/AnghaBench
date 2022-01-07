
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf {scalar_t__ default_thread_run_sc; } ;


 int check_empty (char*,char*) ;
 struct inf* cur_inf () ;
 int printf_unfiltered (char*,char*) ;

__attribute__((used)) static void
show_thread_default_run_cmd (char *args, int from_tty)
{
  struct inf *inf = cur_inf ();
  check_empty (args, "show thread default run");
  printf_unfiltered ("New threads %s allowed to run.\n",
       inf->default_thread_run_sc == 0 ? "are" : "aren't");
}
