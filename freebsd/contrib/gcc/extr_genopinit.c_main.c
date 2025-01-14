
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * rtx ;


 scalar_t__ DEFINE_EXPAND ;
 scalar_t__ DEFINE_INSN ;
 int FATAL_EXIT_CODE ;
 scalar_t__ GET_CODE (int *) ;
 scalar_t__ SUCCESS_EXIT_CODE ;
 scalar_t__ ferror (int ) ;
 int fflush (int ) ;
 int gen_insn (int *) ;
 scalar_t__ init_md_reader_args (int,char**) ;
 int printf (char*) ;
 char* progname ;
 int puts (char*) ;
 int * read_md_rtx (int*,int*) ;
 int stdout ;

int
main (int argc, char **argv)
{
  rtx desc;

  progname = "genopinit";

  if (init_md_reader_args (argc, argv) != SUCCESS_EXIT_CODE)
    return (FATAL_EXIT_CODE);

  printf ("/* Generated automatically by the program `genopinit'\nfrom the machine description file `md'.  */\n\n");


  printf ("#include \"config.h\"\n");
  printf ("#include \"system.h\"\n");
  printf ("#include \"coretypes.h\"\n");
  printf ("#include \"tm.h\"\n");
  printf ("#include \"rtl.h\"\n");
  printf ("#include \"flags.h\"\n");
  printf ("#include \"insn-config.h\"\n");
  printf ("#include \"recog.h\"\n");
  printf ("#include \"expr.h\"\n");
  printf ("#include \"optabs.h\"\n");
  printf ("#include \"reload.h\"\n\n");

  printf ("void\ninit_all_optabs (void)\n{\n");

  puts ("#ifdef FIXUNS_TRUNC_LIKE_FIX_TRUNC\n  int i, j;\n#endif\n");






  while (1)
    {
      int line_no, insn_code_number = 0;

      desc = read_md_rtx (&line_no, &insn_code_number);
      if (desc == ((void*)0))
 break;

      if (GET_CODE (desc) == DEFINE_INSN || GET_CODE (desc) == DEFINE_EXPAND)
 gen_insn (desc);
    }

  puts ("\n#ifdef FIXUNS_TRUNC_LIKE_FIX_TRUNC\n  /* This flag says the same insns that convert to a signed fixnum\n     also convert validly to an unsigned one.  */\n  for (i = 0; i < NUM_MACHINE_MODES; i++)\n    for (j = 0; j < NUM_MACHINE_MODES; j++)\n      ufixtrunc_optab->handlers[i][j].insn_code\n      = sfixtrunc_optab->handlers[i][j].insn_code;\n#endif\n}");
  fflush (stdout);
  return (ferror (stdout) != 0 ? FATAL_EXIT_CODE : SUCCESS_EXIT_CODE);
}
