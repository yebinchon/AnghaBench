
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf {scalar_t__ want_exceptions; scalar_t__ task; } ;


 int check_empty (char*,char*) ;
 struct inf* cur_inf () ;
 int printf_unfiltered (char*,char*) ;

__attribute__((used)) static void
show_exceptions_cmd (char *args, int from_tty)
{
  struct inf *inf = cur_inf ();
  check_empty (args, "show exceptions");
  printf_unfiltered ("Exceptions in the inferior %s trapped.\n",
       inf->task
       ? (inf->want_exceptions ? "are" : "aren't")
       : (inf->want_exceptions ? "will be" : "won't be"));
}
