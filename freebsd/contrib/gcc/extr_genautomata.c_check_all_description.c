
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_automaton_usage () ;
 int check_loops_in_regexps () ;
 int check_usage () ;
 int evaluate_max_reserv_cycles () ;
 int have_error ;
 int process_decls () ;
 int process_regexp_decls () ;

__attribute__((used)) static void
check_all_description (void)
{
  process_decls ();
  check_automaton_usage ();
  process_regexp_decls ();
  check_usage ();
  check_loops_in_regexps ();
  if (!have_error)
    evaluate_max_reserv_cycles ();
}
