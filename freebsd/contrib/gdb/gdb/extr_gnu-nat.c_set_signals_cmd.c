
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf {scalar_t__ want_signals; scalar_t__ traced; scalar_t__ task; } ;


 struct inf* cur_inf () ;
 int inf_set_traced (struct inf*,scalar_t__) ;
 scalar_t__ parse_bool_arg (char*,char*) ;

__attribute__((used)) static void
set_signals_cmd (char *args, int from_tty)
{
  struct inf *inf = cur_inf ();

  inf->want_signals = parse_bool_arg (args, "set signals");

  if (inf->task && inf->want_signals != inf->traced)

    inf_set_traced (inf, inf->want_signals);
}
