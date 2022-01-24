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
 scalar_t__ DEFINE_ATTR ; 
 scalar_t__ DEFINE_DELAY ; 
 scalar_t__ DEFINE_INSN_RESERVATION ; 
 int FATAL_EXIT_CODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ SUCCESS_EXIT_CODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int,char**) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/ * FUNC10 (int*,int*) ; 
 int /*<<< orphan*/  stdout ; 

int
FUNC11 (int argc, char **argv)
{
  rtx desc;
  int have_delay = 0;
  int have_annul_true = 0;
  int have_annul_false = 0;
  int num_insn_reservations = 0;
  int i;

  progname = "genattr";

  if (FUNC7 (argc, argv) != SUCCESS_EXIT_CODE)
    return (FATAL_EXIT_CODE);

  FUNC9 ("/* Generated automatically by the program `genattr'");
  FUNC9 ("   from the machine description file `md'.  */\n");
  FUNC9 ("#ifndef GCC_INSN_ATTR_H");
  FUNC9 ("#define GCC_INSN_ATTR_H\n");

  /* For compatibility, define the attribute `alternative', which is just
     a reference to the variable `which_alternative'.  */

  FUNC9 ("#define HAVE_ATTR_alternative");
  FUNC9 ("#define get_attr_alternative(insn) which_alternative");

  /* Read the machine description.  */

  while (1)
    {
      int line_no, insn_code_number;

      desc = FUNC10 (&line_no, &insn_code_number);
      if (desc == NULL)
	break;

      if (FUNC0 (desc) == DEFINE_ATTR)
	FUNC6 (desc);

      else if (FUNC0 (desc) == DEFINE_DELAY)
        {
	  if (! have_delay)
	    {
	      FUNC8 ("#define DELAY_SLOTS\n");
	      FUNC8 ("extern int num_delay_slots (rtx);\n");
	      FUNC8 ("extern int eligible_for_delay (rtx, int, rtx, int);\n\n");
	      FUNC8 ("extern int const_num_delay_slots (rtx);\n\n");
	      have_delay = 1;
	    }

	  for (i = 0; i < FUNC2 (desc, 1); i += 3)
	    {
	      if (FUNC1 (desc, 1, i + 1) && ! have_annul_true)
		{
		  FUNC8 ("#define ANNUL_IFTRUE_SLOTS\n");
		  FUNC8 ("extern int eligible_for_annul_true (rtx, int, rtx, int);\n");
		  have_annul_true = 1;
		}

	      if (FUNC1 (desc, 1, i + 2) && ! have_annul_false)
		{
		  FUNC8 ("#define ANNUL_IFFALSE_SLOTS\n");
		  FUNC8 ("extern int eligible_for_annul_false (rtx, int, rtx, int);\n");
		  have_annul_false = 1;
		}
	    }
        }

      else if (FUNC0 (desc) == DEFINE_INSN_RESERVATION)
	num_insn_reservations++;
    }

  if (num_insn_reservations > 0)
    {
      /* Output interface for pipeline hazards recognition based on
	 DFA (deterministic finite state automata.  */
      FUNC8 ("\n#define INSN_SCHEDULING\n");
      FUNC8 ("\n/* DFA based pipeline interface.  */");
      FUNC8 ("\n#ifndef AUTOMATON_ALTS\n");
      FUNC8 ("#define AUTOMATON_ALTS 0\n");
      FUNC8 ("#endif\n\n");
      FUNC8 ("\n#ifndef AUTOMATON_STATE_ALTS\n");
      FUNC8 ("#define AUTOMATON_STATE_ALTS 0\n");
      FUNC8 ("#endif\n\n");
      FUNC8 ("#ifndef CPU_UNITS_QUERY\n");
      FUNC8 ("#define CPU_UNITS_QUERY 0\n");
      FUNC8 ("#endif\n\n");
      /* Interface itself: */
      FUNC8 ("/* Internal insn code number used by automata.  */\n");
      FUNC8 ("extern int internal_dfa_insn_code (rtx);\n\n");
      FUNC8 ("/* Insn latency time defined in define_insn_reservation. */\n");
      FUNC8 ("extern int insn_default_latency (rtx);\n\n");
      FUNC8 ("/* Return nonzero if there is a bypass for given insn\n");
      FUNC8 ("   which is a data producer.  */\n");
      FUNC8 ("extern int bypass_p (rtx);\n\n");
      FUNC8 ("/* Insn latency time on data consumed by the 2nd insn.\n");
      FUNC8 ("   Use the function if bypass_p returns nonzero for\n");
      FUNC8 ("   the 1st insn. */\n");
      FUNC8 ("extern int insn_latency (rtx, rtx);\n\n");
      FUNC8 ("\n#if AUTOMATON_ALTS\n");
      FUNC8 ("/* The following function returns number of alternative\n");
      FUNC8 ("   reservations of given insn.  It may be used for better\n");
      FUNC8 ("   insns scheduling heuristics. */\n");
      FUNC8 ("extern int insn_alts (rtx);\n\n");
      FUNC8 ("#endif\n\n");
      FUNC8 ("/* Maximal possible number of insns waiting results being\n");
      FUNC8 ("   produced by insns whose execution is not finished. */\n");
      FUNC8 ("extern const int max_insn_queue_index;\n\n");
      FUNC8 ("/* Pointer to data describing current state of DFA.  */\n");
      FUNC8 ("typedef void *state_t;\n\n");
      FUNC8 ("/* Size of the data in bytes.  */\n");
      FUNC8 ("extern int state_size (void);\n\n");
      FUNC8 ("/* Initiate given DFA state, i.e. Set up the state\n");
      FUNC8 ("   as all functional units were not reserved.  */\n");
      FUNC8 ("extern void state_reset (state_t);\n");
      FUNC8 ("/* The following function returns negative value if given\n");
      FUNC8 ("   insn can be issued in processor state described by given\n");
      FUNC8 ("   DFA state.  In this case, the DFA state is changed to\n");
      FUNC8 ("   reflect the current and future reservations by given\n");
      FUNC8 ("   insn.  Otherwise the function returns minimal time\n");
      FUNC8 ("   delay to issue the insn.  This delay may be zero\n");
      FUNC8 ("   for superscalar or VLIW processors.  If the second\n");
      FUNC8 ("   parameter is NULL the function changes given DFA state\n");
      FUNC8 ("   as new processor cycle started.  */\n");
      FUNC8 ("extern int state_transition (state_t, rtx);\n");
      FUNC8 ("\n#if AUTOMATON_STATE_ALTS\n");
      FUNC8 ("/* The following function returns number of possible\n");
      FUNC8 ("   alternative reservations of given insn in given\n");
      FUNC8 ("   DFA state.  It may be used for better insns scheduling\n");
      FUNC8 ("   heuristics.  By default the function is defined if\n");
      FUNC8 ("   macro AUTOMATON_STATE_ALTS is defined because its\n");
      FUNC8 ("   implementation may require much memory.  */\n");
      FUNC8 ("extern int state_alts (state_t, rtx);\n");
      FUNC8 ("#endif\n\n");
      FUNC8 ("extern int min_issue_delay (state_t, rtx);\n");
      FUNC8 ("/* The following function returns nonzero if no one insn\n");
      FUNC8 ("   can be issued in current DFA state. */\n");
      FUNC8 ("extern int state_dead_lock_p (state_t);\n");
      FUNC8 ("/* The function returns minimal delay of issue of the 2nd\n");
      FUNC8 ("   insn after issuing the 1st insn in given DFA state.\n");
      FUNC8 ("   The 1st insn should be issued in given state (i.e.\n");
      FUNC8 ("    state_transition should return negative value for\n");
      FUNC8 ("    the insn and the state).  Data dependencies between\n");
      FUNC8 ("    the insns are ignored by the function.  */\n");
      FUNC8
	("extern int min_insn_conflict_delay (state_t, rtx, rtx);\n");
      FUNC8 ("/* The following function outputs reservations for given\n");
      FUNC8 ("   insn as they are described in the corresponding\n");
      FUNC8 ("   define_insn_reservation.  */\n");
      FUNC8 ("extern void print_reservation (FILE *, rtx);\n");
      FUNC8 ("\n#if CPU_UNITS_QUERY\n");
      FUNC8 ("/* The following function returns code of functional unit\n");
      FUNC8 ("   with given name (see define_cpu_unit). */\n");
      FUNC8 ("extern int get_cpu_unit_code (const char *);\n");
      FUNC8 ("/* The following function returns nonzero if functional\n");
      FUNC8 ("   unit with given code is currently reserved in given\n");
      FUNC8 ("   DFA state.  */\n");
      FUNC8 ("extern int cpu_unit_reservation_p (state_t, int);\n");
      FUNC8 ("#endif\n\n");
      FUNC8 ("/* Clean insn code cache.  It should be called if there\n");
      FUNC8 ("   is a chance that condition value in a\n");
      FUNC8 ("   define_insn_reservation will be changed after\n");
      FUNC8 ("   last call of dfa_start.  */\n");
      FUNC8 ("extern void dfa_clean_insn_cache (void);\n\n");
      FUNC8 ("extern void dfa_clear_single_insn_cache (rtx);\n\n");      
      FUNC8 ("/* Initiate and finish work with DFA.  They should be\n");
      FUNC8 ("   called as the first and the last interface\n");
      FUNC8 ("   functions.  */\n");
      FUNC8 ("extern void dfa_start (void);\n");
      FUNC8 ("extern void dfa_finish (void);\n");
    }
  else
    {
      /* Otherwise we do no scheduling, but we need these typedefs
	 in order to avoid uglifying other code with more ifdefs.  */
      FUNC8 ("typedef void *state_t;\n\n");
    }

  /* Output flag masks for use by reorg.

     Flags are used to hold branch direction and prediction information
     for use by eligible_for_...  */
  FUNC8("\n#define ATTR_FLAG_forward\t0x1\n");
  FUNC8("#define ATTR_FLAG_backward\t0x2\n");
  FUNC8("#define ATTR_FLAG_likely\t0x4\n");
  FUNC8("#define ATTR_FLAG_very_likely\t0x8\n");
  FUNC8("#define ATTR_FLAG_unlikely\t0x10\n");
  FUNC8("#define ATTR_FLAG_very_unlikely\t0x20\n");

  FUNC9("\n#endif /* GCC_INSN_ATTR_H */");

  if (FUNC4 (stdout) || FUNC5 (stdout) || FUNC3 (stdout))
    return FATAL_EXIT_CODE;

  return SUCCESS_EXIT_CODE;
}