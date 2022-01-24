#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/ * rtx ;

/* Variables and functions */
#define  DEFINE_EXPAND 132 
#define  DEFINE_INSN 131 
#define  DEFINE_PEEPHOLE 130 
#define  DEFINE_PEEPHOLE2 129 
#define  DEFINE_SPLIT 128 
 int FATAL_EXIT_CODE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ SUCCESS_EXIT_CODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ have_cc0_flag ; 
 scalar_t__ have_cmove_flag ; 
 scalar_t__ have_cond_exec_flag ; 
 scalar_t__ have_lo_sum_flag ; 
 int have_peephole2_flag ; 
 int have_peephole_flag ; 
 scalar_t__ FUNC9 (int,char**) ; 
 int max_dup_operands ; 
 int max_insns_per_peep2 ; 
 int max_insns_per_split ; 
 int max_recog_operands ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/ * FUNC12 (int*,int*) ; 
 int /*<<< orphan*/  stdout ; 

int
FUNC13 (int argc, char **argv)
{
  rtx desc;

  progname = "genconfig";

  if (FUNC9 (argc, argv) != SUCCESS_EXIT_CODE)
    return (FATAL_EXIT_CODE);

  FUNC11 ("/* Generated automatically by the program `genconfig'");
  FUNC11 ("   from the machine description file `md'.  */\n");
  FUNC11 ("#ifndef GCC_INSN_CONFIG_H");
  FUNC11 ("#define GCC_INSN_CONFIG_H\n");

  /* Allow at least 30 operands for the sake of asm constructs.  */
  /* ??? We *really* ought to reorganize things such that there
     is no fixed upper bound.  */
  max_recog_operands = 29;  /* We will add 1 later.  */
  max_dup_operands = 1;

  /* Read the machine description.  */

  while (1)
    {
      int line_no, insn_code_number = 0;

      desc = FUNC12 (&line_no, &insn_code_number);
      if (desc == NULL)
	break;
	
      switch (FUNC0 (desc)) 
	{
  	  case DEFINE_INSN:
	    FUNC5 (desc);
	    break;
	  
	  case DEFINE_EXPAND:
	    FUNC4 (desc);
	    break;

	  case DEFINE_SPLIT:
	    FUNC8 (desc);
	    break;

	  case DEFINE_PEEPHOLE2:
	    have_peephole2_flag = 1;
	    FUNC7 (desc);
	    break;

	  case DEFINE_PEEPHOLE:
	    have_peephole_flag = 1;
	    FUNC6 (desc);
	    break;

	  default:
	    break;
	}
    }

  FUNC10 ("#define MAX_RECOG_OPERANDS %d\n", max_recog_operands + 1);
  FUNC10 ("#define MAX_DUP_OPERANDS %d\n", max_dup_operands);

  /* This is conditionally defined, in case the user writes code which emits
     more splits than we can readily see (and knows s/he does it).  */
  FUNC10 ("#ifndef MAX_INSNS_PER_SPLIT\n");
  FUNC10 ("#define MAX_INSNS_PER_SPLIT %d\n", max_insns_per_split);
  FUNC10 ("#endif\n");

  if (have_cc0_flag)
    {
      FUNC10 ("#define HAVE_cc0 1\n");
      FUNC10 ("#define CC0_P(X) ((X) == cc0_rtx)\n");
    }
  else
    {
      /* We output CC0_P this way to make sure that X is declared
	 somewhere.  */
      FUNC10 ("#define CC0_P(X) ((X) ? 0 : 0)\n");
    }

  if (have_cmove_flag)
    FUNC10 ("#define HAVE_conditional_move 1\n");

  if (have_cond_exec_flag)
    FUNC10 ("#define HAVE_conditional_execution 1\n");

  if (have_lo_sum_flag)
    FUNC10 ("#define HAVE_lo_sum 1\n");

  if (have_peephole_flag)
    FUNC10 ("#define HAVE_peephole 1\n");

  if (have_peephole2_flag)
    {
      FUNC10 ("#define HAVE_peephole2 1\n");
      FUNC10 ("#define MAX_INSNS_PER_PEEP2 %d\n", max_insns_per_peep2);
    }

  FUNC11("\n#endif /* GCC_INSN_CONFIG_H */");

  if (FUNC2 (stdout) || FUNC3 (stdout) || FUNC1 (stdout))
    return FATAL_EXIT_CODE;

  return SUCCESS_EXIT_CODE;
}