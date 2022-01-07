
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* CPU_UNITS_QUERY_MACRO_NAME ;
 char* DFA_INSN_CODES_LENGTH_VARIABLE_NAME ;
 char* DFA_INSN_CODES_VARIABLE_NAME ;
 int FATAL_EXIT_CODE ;
 int all_time ;
 int check_time ;
 int create_ticker () ;
 int exit (int ) ;
 int fatal (char*,int ) ;
 int fclose (int *) ;
 scalar_t__ ferror (int ) ;
 int fflush (int *) ;
 int finish_arcs () ;
 int finish_automata_lists () ;
 int finish_automaton_decl_table () ;
 int finish_decl_table () ;
 int finish_insn_decl_table () ;
 int finish_states () ;
 int * fopen (int ,char*) ;
 int fprintf (int *,char*,...) ;
 int generation_time ;
 scalar_t__ have_error ;
 int irp ;
 int obstack_free (int *,int *) ;
 int output_automaton_descriptions () ;
 int output_chip_definitions () ;
 int output_cpu_unit_reservation_p () ;
 int output_dead_lock_func () ;
 int output_description () ;
 int * output_description_file ;
 int output_description_file_name ;
 int output_dfa_clean_insn_cache_func () ;
 int output_dfa_finish_func () ;
 int output_dfa_insn_code_func () ;
 int output_dfa_start_func () ;
 int output_file ;
 int output_get_cpu_unit_code_func () ;
 int output_insn_latency_func () ;
 int output_internal_dead_lock_func () ;
 int output_internal_insn_latency_func () ;
 int output_internal_min_issue_delay_func () ;
 int output_internal_reset_func () ;
 int output_internal_trans_func () ;
 int output_max_insn_queue_index_def () ;
 int output_min_insn_conflict_delay_func () ;
 int output_min_issue_delay_func () ;
 int output_print_reservation_func () ;
 int output_reset_func () ;
 int output_size_func () ;
 int output_statistics (int *) ;
 int output_tables () ;
 int output_time ;
 int output_time_statistics (int *) ;
 int output_trans_func () ;
 int perror (int ) ;
 int print_active_time (int *,int ) ;
 scalar_t__ progress_flag ;
 int remove (int ) ;
 int * stderr ;
 int stdout ;
 int ticker_off (int *) ;
 scalar_t__ time_flag ;
 scalar_t__ v_flag ;

__attribute__((used)) static void
write_automata (void)
{
  output_time = create_ticker ();
  if (progress_flag)
    fprintf (stderr, "Forming and outputting automata tables...");
  output_tables ();
  if (progress_flag)
    {
      fprintf (stderr, "done\n");
      fprintf (stderr, "Output functions to work with automata...");
    }
  output_chip_definitions ();
  output_max_insn_queue_index_def ();
  output_internal_min_issue_delay_func ();
  output_internal_trans_func ();

  fprintf (output_file, "\nstatic int *%s;\n", DFA_INSN_CODES_VARIABLE_NAME);
  fprintf (output_file, "\nstatic int %s;\n\n",
    DFA_INSN_CODES_LENGTH_VARIABLE_NAME);
  output_dfa_insn_code_func ();
  output_trans_func ();
  output_min_issue_delay_func ();
  output_internal_dead_lock_func ();
  output_dead_lock_func ();
  output_size_func ();
  output_internal_reset_func ();
  output_reset_func ();
  output_min_insn_conflict_delay_func ();
  output_internal_insn_latency_func ();
  output_insn_latency_func ();
  output_print_reservation_func ();

  fprintf (output_file, "\n#if %s\n\n", CPU_UNITS_QUERY_MACRO_NAME);
  output_get_cpu_unit_code_func ();
  output_cpu_unit_reservation_p ();
  fprintf (output_file, "\n#endif /* #if %s */\n\n",
    CPU_UNITS_QUERY_MACRO_NAME);
  output_dfa_clean_insn_cache_func ();
  output_dfa_start_func ();
  output_dfa_finish_func ();
  if (progress_flag)
    fprintf (stderr, "done\n");
  if (v_flag)
    {
      output_description_file = fopen (output_description_file_name, "w");
      if (output_description_file == ((void*)0))
 {
   perror (output_description_file_name);
   exit (FATAL_EXIT_CODE);
 }
      if (progress_flag)
 fprintf (stderr, "Output automata description...");
      output_description ();
      output_automaton_descriptions ();
      if (progress_flag)
 fprintf (stderr, "done\n");
      output_statistics (output_description_file);
    }
  output_statistics (stderr);
  ticker_off (&output_time);
  output_time_statistics (stderr);
  finish_states ();
  finish_arcs ();
  finish_automata_lists ();
  if (time_flag)
    {
      fprintf (stderr, "Summary:\n");
      fprintf (stderr, "  check time ");
      print_active_time (stderr, check_time);
      fprintf (stderr, ", generation time ");
      print_active_time (stderr, generation_time);
      fprintf (stderr, ", all time ");
      print_active_time (stderr, all_time);
      fprintf (stderr, "\n");
    }

  if (output_description_file != ((void*)0))
    {
      fflush (output_description_file);
      if (ferror (stdout) != 0)
 fatal ("Error in writing DFA description file %s",
               output_description_file_name);
      fclose (output_description_file);
    }
  finish_automaton_decl_table ();
  finish_insn_decl_table ();
  finish_decl_table ();
  obstack_free (&irp, ((void*)0));
  if (have_error && output_description_file != ((void*)0))
    remove (output_description_file_name);
}
