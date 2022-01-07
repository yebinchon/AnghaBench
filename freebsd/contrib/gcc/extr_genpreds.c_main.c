
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
 int FATAL_EXIT_CODE ;
 int GET_CODE (int ) ;
 scalar_t__ SUCCESS_EXIT_CODE ;
 int fatal (char*) ;
 scalar_t__ fclose (int ) ;
 scalar_t__ ferror (int ) ;
 scalar_t__ fflush (int ) ;
 scalar_t__ gen_constrs ;
 scalar_t__ gen_header ;
 scalar_t__ have_error ;
 scalar_t__ init_md_reader_args_cb (int,char**,int ) ;
 int parse_option ;
 int process_define_constraint (int ,int) ;
 int process_define_predicate (int ,int) ;
 int process_define_register_constraint (int ,int) ;
 char* progname ;
 int read_md_rtx (int*,int*) ;
 int stdout ;
 int write_insn_preds_c () ;
 int write_tm_constrs_h () ;
 int write_tm_preds_h () ;

int
main (int argc, char **argv)
{
  rtx defn;
  int pattern_lineno, next_insn_code = 0;

  progname = argv[0];
  if (argc <= 1)
    fatal ("no input file name");
  if (init_md_reader_args_cb (argc, argv, parse_option) != SUCCESS_EXIT_CODE)
    return FATAL_EXIT_CODE;

  while ((defn = read_md_rtx (&pattern_lineno, &next_insn_code)) != 0)
    switch (GET_CODE (defn))
      {
      case 130:
      case 128:
 process_define_predicate (defn, pattern_lineno);
 break;

      case 132:
      case 131:
      case 133:
 process_define_constraint (defn, pattern_lineno);
 break;

      case 129:
 process_define_register_constraint (defn, pattern_lineno);
 break;

      default:
 break;
      }

  if (gen_header)
    write_tm_preds_h ();
  else if (gen_constrs)
    write_tm_constrs_h ();
  else
    write_insn_preds_c ();

  if (have_error || ferror (stdout) || fflush (stdout) || fclose (stdout))
    return FATAL_EXIT_CODE;

  return SUCCESS_EXIT_CODE;
}
