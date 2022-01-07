
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * rtx ;
 int FATAL_EXIT_CODE ;
 int GET_CODE (int *) ;
 scalar_t__ SUCCESS_EXIT_CODE ;
 scalar_t__ ferror (int ) ;
 int fflush (int ) ;
 int gen_expand (int *,int) ;
 int gen_insn (int *,int) ;
 int gen_peephole (int *,int) ;
 int gen_split (int *,int) ;
 scalar_t__ have_error ;
 scalar_t__ init_md_reader_args (int,char**) ;
 scalar_t__ next_code_number ;
 scalar_t__ next_index_number ;
 int note_constraint (int *,int) ;
 int output_get_insn_name () ;
 int output_insn_data () ;
 int output_operand_data () ;
 int output_prologue () ;
 int printf (char*) ;
 char* progname ;
 int * read_md_rtx (int*,scalar_t__*) ;
 int stdout ;

int
main (int argc, char **argv)
{
  rtx desc;

  progname = "genoutput";

  if (init_md_reader_args (argc, argv) != SUCCESS_EXIT_CODE)
    return (FATAL_EXIT_CODE);

  output_prologue ();
  next_code_number = 0;
  next_index_number = 0;



  while (1)
    {
      int line_no;

      desc = read_md_rtx (&line_no, &next_code_number);
      if (desc == ((void*)0))
 break;

      switch (GET_CODE (desc))
 {
 case 133:
   gen_insn (desc, line_no);
   break;

 case 131:
   gen_peephole (desc, line_no);
   break;

 case 134:
   gen_expand (desc, line_no);
   break;

 case 128:
 case 130:
   gen_split (desc, line_no);
   break;
 default:
   break;
 }
      next_index_number++;
    }

  printf("\n\n");
  output_operand_data ();
  output_insn_data ();
  output_get_insn_name ();

  fflush (stdout);
  return (ferror (stdout) != 0 || have_error
 ? FATAL_EXIT_CODE : SUCCESS_EXIT_CODE);
}
