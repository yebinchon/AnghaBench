
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf {int want_exceptions; scalar_t__ task; } ;


 struct inf* cur_inf () ;
 int parse_bool_arg (char*,char*) ;

__attribute__((used)) static void
set_exceptions_cmd (char *args, int from_tty)
{
  struct inf *inf = cur_inf ();
  int val = parse_bool_arg (args, "set exceptions");

  if (inf->task && inf->want_exceptions != val)

              ;

  inf->want_exceptions = val;
}
