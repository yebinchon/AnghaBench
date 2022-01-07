
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decision_head {int dummy; } ;
typedef int * rtx ;







 int FATAL_EXIT_CODE ;
 int GET_CODE (int *) ;
 int PEEPHOLE2 ;
 int RECOG ;
 int SPLIT ;
 scalar_t__ SUCCESS_EXIT_CODE ;
 scalar_t__ error_count ;
 scalar_t__ ferror (int ) ;
 int fflush (int ) ;
 scalar_t__ have_error ;
 scalar_t__ init_md_reader_args (int,char**) ;
 struct decision_head make_insn_sequence (int *,int ) ;
 int memset (struct decision_head*,int ,int) ;
 int merge_trees (struct decision_head*,struct decision_head*) ;
 scalar_t__ next_insn_code ;
 int pattern_lineno ;
 int process_define_predicate (int *) ;
 int process_tree (struct decision_head*,int ) ;
 char* progname ;
 int puts (char*) ;
 int * read_md_rtx (int *,scalar_t__*) ;
 int stdout ;
 int write_header () ;

int
main (int argc, char **argv)
{
  rtx desc;
  struct decision_head recog_tree, split_tree, peephole2_tree, h;

  progname = "genrecog";

  memset (&recog_tree, 0, sizeof recog_tree);
  memset (&split_tree, 0, sizeof split_tree);
  memset (&peephole2_tree, 0, sizeof peephole2_tree);

  if (init_md_reader_args (argc, argv) != SUCCESS_EXIT_CODE)
    return (FATAL_EXIT_CODE);

  next_insn_code = 0;

  write_header ();



  while (1)
    {
      desc = read_md_rtx (&pattern_lineno, &next_insn_code);
      if (desc == ((void*)0))
 break;

      switch (GET_CODE (desc))
 {
 case 130:
 case 129:
   process_define_predicate (desc);
   break;

 case 132:
   h = make_insn_sequence (desc, RECOG);
   merge_trees (&recog_tree, &h);
   break;

 case 128:
   h = make_insn_sequence (desc, SPLIT);
   merge_trees (&split_tree, &h);
   break;

 case 131:
   h = make_insn_sequence (desc, PEEPHOLE2);
   merge_trees (&peephole2_tree, &h);

 default:
                   ;
 }
    }

  if (error_count || have_error)
    return FATAL_EXIT_CODE;

  puts ("\n\n");

  process_tree (&recog_tree, RECOG);
  process_tree (&split_tree, SPLIT);
  process_tree (&peephole2_tree, PEEPHOLE2);

  fflush (stdout);
  return (ferror (stdout) != 0 ? FATAL_EXIT_CODE : SUCCESS_EXIT_CODE);
}
