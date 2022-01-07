
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf {scalar_t__ stopped; } ;


 struct inf* active_inf () ;
 int check_empty (char*,char*) ;
 int printf_unfiltered (char*,char*) ;

__attribute__((used)) static void
show_stopped_cmd (char *args, int from_tty)
{
  struct inf *inf = active_inf ();
  check_empty (args, "show stopped");
  printf_unfiltered ("The inferior process %s stopped.\n",
       inf->stopped ? "is" : "isn't");
}
