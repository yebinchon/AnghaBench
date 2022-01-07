
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
 int gen_expand (int *) ;
 int gen_insn (int *,int) ;
 int gen_split (int *) ;
 scalar_t__ init_md_reader_args (int,char**) ;
 scalar_t__ insn_code_number ;
 scalar_t__ insn_index_number ;
 int output_add_clobbers () ;
 int output_added_clobbers_hard_reg_p () ;
 int printf (char*,...) ;
 char* progname ;
 int * read_md_rtx (int*,scalar_t__*) ;
 char* read_rtx_filename ;
 int stdout ;

int
main (int argc, char **argv)
{
  rtx desc;

  progname = "genemit";

  if (init_md_reader_args (argc, argv) != SUCCESS_EXIT_CODE)
    return (FATAL_EXIT_CODE);




  insn_code_number = 0;
  insn_index_number = 0;

  printf ("/* Generated automatically by the program `genemit'\nfrom the machine description file `md'.  */\n\n");


  printf ("#include \"config.h\"\n");
  printf ("#include \"system.h\"\n");
  printf ("#include \"coretypes.h\"\n");
  printf ("#include \"tm.h\"\n");
  printf ("#include \"rtl.h\"\n");
  printf ("#include \"tm_p.h\"\n");
  printf ("#include \"function.h\"\n");
  printf ("#include \"expr.h\"\n");
  printf ("#include \"optabs.h\"\n");
  printf ("#include \"real.h\"\n");
  printf ("#include \"flags.h\"\n");
  printf ("#include \"output.h\"\n");
  printf ("#include \"insn-config.h\"\n");
  printf ("#include \"hard-reg-set.h\"\n");
  printf ("#include \"recog.h\"\n");
  printf ("#include \"resource.h\"\n");
  printf ("#include \"reload.h\"\n");
  printf ("#include \"toplev.h\"\n");
  printf ("#include \"tm-constrs.h\"\n");
  printf ("#include \"ggc.h\"\n\n");
  printf ("#include \"basic-block.h\"\n\n");
  printf ("#define FAIL return (end_sequence (), _val)\n");
  printf ("#define DONE return (_val = get_insns (), end_sequence (), _val)\n\n");



  while (1)
    {
      int line_no;

      desc = read_md_rtx (&line_no, &insn_code_number);
      if (desc == ((void*)0))
 break;

      switch (GET_CODE (desc))
 {
 case 130:
   gen_insn (desc, line_no);
   break;

 case 131:
   printf ("/* %s:%d */\n", read_rtx_filename, line_no);
   gen_expand (desc);
   break;

 case 128:
   printf ("/* %s:%d */\n", read_rtx_filename, line_no);
   gen_split (desc);
   break;

 case 129:
   printf ("/* %s:%d */\n", read_rtx_filename, line_no);
   gen_split (desc);
   break;

 default:
   break;
 }
      ++insn_index_number;
    }



  output_add_clobbers ();
  output_added_clobbers_hard_reg_p ();

  fflush (stdout);
  return (ferror (stdout) != 0 ? FATAL_EXIT_CODE : SUCCESS_EXIT_CODE);
}
