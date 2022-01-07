
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int NDFA_time ;
 int NDFA_to_DFA_time ;
 int automaton_generation_time ;
 int equiv_time ;
 int fprintf (int *,char*) ;
 int minimize_time ;
 scalar_t__ ndfa_flag ;
 int output_time ;
 int print_active_time (int *,int ) ;
 int transform_time ;

__attribute__((used)) static void
output_time_statistics (FILE *f)
{
  fprintf (f, "\n  transformation: ");
  print_active_time (f, transform_time);
  fprintf (f, (!ndfa_flag ? ", building DFA: " : ", building NDFA: "));
  print_active_time (f, NDFA_time);
  if (ndfa_flag)
    {
      fprintf (f, ", NDFA -> DFA: ");
      print_active_time (f, NDFA_to_DFA_time);
    }
  fprintf (f, "\n  DFA minimization: ");
  print_active_time (f, minimize_time);
  fprintf (f, ", making insn equivalence: ");
  print_active_time (f, equiv_time);
  fprintf (f, "\n all automaton generation: ");
  print_active_time (f, automaton_generation_time);
  fprintf (f, ", output: ");
  print_active_time (f, output_time);
  fprintf (f, "\n");
}
