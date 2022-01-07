
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * rtx ;
 int FATAL_EXIT_CODE ;


 int GET_CODE (int *) ;

 scalar_t__ SUCCESS_EXIT_CODE ;
 scalar_t__ VEC_length (int ,int ) ;
 int decl_t ;
 int decls ;
 int expand_automata () ;
 scalar_t__ ferror (int ) ;
 int fflush (int ) ;
 int gen_absence_set (int *) ;
 int gen_automata_option (int *) ;
 int gen_automaton (int *) ;
 int gen_bypass (int *) ;
 int gen_cpu_unit (int *) ;
 int gen_excl_set (int *) ;
 int gen_final_absence_set (int *) ;
 int gen_final_presence_set (int *) ;
 int gen_insn_reserv (int *) ;
 int gen_presence_set (int *) ;
 int gen_query_cpu_unit (int *) ;
 int gen_reserv (int *) ;
 scalar_t__ have_error ;
 scalar_t__ init_md_reader_args (int,char**) ;
 int initiate_automaton_gen (int,char**) ;
 char* progname ;
 int puts (char*) ;
 int * read_md_rtx (int*,int*) ;
 int stdout ;
 int write_automata () ;

int
main (int argc, char **argv)
{
  rtx desc;

  progname = "genautomata";

  if (init_md_reader_args (argc, argv) != SUCCESS_EXIT_CODE)
    return (FATAL_EXIT_CODE);

  initiate_automaton_gen (argc, argv);
  while (1)
    {
      int lineno;
      int insn_code_number;

      desc = read_md_rtx (&lineno, &insn_code_number);
      if (desc == ((void*)0))
 break;

      switch (GET_CODE (desc))
 {
 case 135:
   gen_cpu_unit (desc);
   break;

 case 133:
   gen_query_cpu_unit (desc);
   break;

 case 136:
   gen_bypass (desc);
   break;

 case 131:
   gen_excl_set (desc);
   break;

 case 128:
   gen_presence_set (desc);
   break;

 case 129:
   gen_final_presence_set (desc);
   break;

 case 139:
   gen_absence_set (desc);
   break;

 case 130:
   gen_final_absence_set (desc);
   break;

 case 137:
   gen_automaton (desc);
   break;

 case 138:
   gen_automata_option (desc);
   break;

 case 132:
   gen_reserv (desc);
   break;

 case 134:
   gen_insn_reserv (desc);
   break;

 default:
   break;
 }
    }

  if (have_error)
    return FATAL_EXIT_CODE;

  puts ("/* Generated automatically by the program `genautomata'\n"
 "   from the machine description file `md'.  */\n\n"
 "#include \"config.h\"\n"
 "#include \"system.h\"\n"
 "#include \"coretypes.h\"\n"
 "#include \"tm.h\"\n"
 "#include \"rtl.h\"\n"
 "#include \"tm_p.h\"\n"
 "#include \"insn-config.h\"\n"
 "#include \"recog.h\"\n"
 "#include \"regs.h\"\n"
 "#include \"real.h\"\n"
 "#include \"output.h\"\n"
 "#include \"insn-attr.h\"\n"
 "#include \"toplev.h\"\n"
 "#include \"flags.h\"\n"
 "#include \"function.h\"\n");

  if (VEC_length (decl_t, decls) > 0)
    {
      expand_automata ();
      write_automata ();
    }

  fflush (stdout);
  return (ferror (stdout) != 0 ? FATAL_EXIT_CODE : SUCCESS_EXIT_CODE);
}
