
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
 scalar_t__ fclose (int ) ;
 scalar_t__ ferror (int ) ;
 scalar_t__ fflush (int ) ;
 int gen_insn (int *,int) ;
 scalar_t__ init_md_reader_args (int,char**) ;
 scalar_t__ insn_elision ;
 char* progname ;
 int puts (char*) ;
 int * read_md_rtx (int*,int*) ;
 int stdout ;

int
main (int argc, char **argv)
{
  rtx desc;

  progname = "gencodes";



  insn_elision = 0;

  if (init_md_reader_args (argc, argv) != SUCCESS_EXIT_CODE)
    return (FATAL_EXIT_CODE);

  puts ("/* Generated automatically by the program `gencodes'\n   from the machine description file `md'.  */\n\n#ifndef GCC_INSN_CODES_H\n#define GCC_INSN_CODES_H\n\nenum insn_code {");
  while (1)
    {
      int line_no;
      int insn_code_number;

      desc = read_md_rtx (&line_no, &insn_code_number);
      if (desc == ((void*)0))
 break;

      if (GET_CODE (desc) == DEFINE_INSN || GET_CODE (desc) == DEFINE_EXPAND)
 gen_insn (desc, insn_code_number);
    }

  puts ("  CODE_FOR_nothing\n};\n\n#endif /* GCC_INSN_CODES_H */");




  if (ferror (stdout) || fflush (stdout) || fclose (stdout))
    return FATAL_EXIT_CODE;

  return SUCCESS_EXIT_CODE;
}
