
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * rtx ;







 int FATAL_EXIT_CODE ;
 int GET_CODE (int *) ;
 scalar_t__ SUCCESS_EXIT_CODE ;
 scalar_t__ fclose (int ) ;
 scalar_t__ ferror (int ) ;
 scalar_t__ fflush (int ) ;
 int gen_expand (int *) ;
 int gen_insn (int *) ;
 int gen_peephole (int *) ;
 int gen_peephole2 (int *) ;
 int gen_split (int *) ;
 scalar_t__ have_cc0_flag ;
 scalar_t__ have_cmove_flag ;
 scalar_t__ have_cond_exec_flag ;
 scalar_t__ have_lo_sum_flag ;
 int have_peephole2_flag ;
 int have_peephole_flag ;
 scalar_t__ init_md_reader_args (int,char**) ;
 int max_dup_operands ;
 int max_insns_per_peep2 ;
 int max_insns_per_split ;
 int max_recog_operands ;
 int printf (char*,...) ;
 char* progname ;
 int puts (char*) ;
 int * read_md_rtx (int*,int*) ;
 int stdout ;

int
main (int argc, char **argv)
{
  rtx desc;

  progname = "genconfig";

  if (init_md_reader_args (argc, argv) != SUCCESS_EXIT_CODE)
    return (FATAL_EXIT_CODE);

  puts ("/* Generated automatically by the program `genconfig'");
  puts ("   from the machine description file `md'.  */\n");
  puts ("#ifndef GCC_INSN_CONFIG_H");
  puts ("#define GCC_INSN_CONFIG_H\n");




  max_recog_operands = 29;
  max_dup_operands = 1;



  while (1)
    {
      int line_no, insn_code_number = 0;

      desc = read_md_rtx (&line_no, &insn_code_number);
      if (desc == ((void*)0))
 break;

      switch (GET_CODE (desc))
 {
     case 131:
     gen_insn (desc);
     break;

   case 132:
     gen_expand (desc);
     break;

   case 128:
     gen_split (desc);
     break;

   case 129:
     have_peephole2_flag = 1;
     gen_peephole2 (desc);
     break;

   case 130:
     have_peephole_flag = 1;
     gen_peephole (desc);
     break;

   default:
     break;
 }
    }

  printf ("#define MAX_RECOG_OPERANDS %d\n", max_recog_operands + 1);
  printf ("#define MAX_DUP_OPERANDS %d\n", max_dup_operands);



  printf ("#ifndef MAX_INSNS_PER_SPLIT\n");
  printf ("#define MAX_INSNS_PER_SPLIT %d\n", max_insns_per_split);
  printf ("#endif\n");

  if (have_cc0_flag)
    {
      printf ("#define HAVE_cc0 1\n");
      printf ("#define CC0_P(X) ((X) == cc0_rtx)\n");
    }
  else
    {


      printf ("#define CC0_P(X) ((X) ? 0 : 0)\n");
    }

  if (have_cmove_flag)
    printf ("#define HAVE_conditional_move 1\n");

  if (have_cond_exec_flag)
    printf ("#define HAVE_conditional_execution 1\n");

  if (have_lo_sum_flag)
    printf ("#define HAVE_lo_sum 1\n");

  if (have_peephole_flag)
    printf ("#define HAVE_peephole 1\n");

  if (have_peephole2_flag)
    {
      printf ("#define HAVE_peephole2 1\n");
      printf ("#define MAX_INSNS_PER_PEEP2 %d\n", max_insns_per_peep2);
    }

  puts("\n#endif /* GCC_INSN_CONFIG_H */");

  if (ferror (stdout) || fflush (stdout) || fclose (stdout))
    return FATAL_EXIT_CODE;

  return SUCCESS_EXIT_CODE;
}
