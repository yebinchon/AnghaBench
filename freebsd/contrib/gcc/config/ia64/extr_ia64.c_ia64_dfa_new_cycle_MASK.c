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
typedef  scalar_t__ rtx ;
typedef  enum attr_itanium_class { ____Placeholder_attr_itanium_class } attr_itanium_class ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ASM_INPUT ; 
 scalar_t__ CALL_INSN ; 
 int FALSE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 size_t FUNC2 (scalar_t__) ; 
 int ITANIUM_CLASS_MMMUL ; 
 int ITANIUM_CLASS_MMSHF ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ PROCESSOR_ITANIUM ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ TARGET_EARLY_STOP_BITS ; 
 int TRUE ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 
 int* add_cycles ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int* clocks ; 
 int /*<<< orphan*/  curr_state ; 
 int /*<<< orphan*/ * dfa_pre_cycle_insn ; 
 int /*<<< orphan*/  dfa_state_size ; 
 int /*<<< orphan*/ * dfa_stop_insn ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (scalar_t__) ; 
 scalar_t__ ia64_tune ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ last_scheduled_insn ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  prev_cycle_state ; 
 scalar_t__ reload_completed ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int stop_before_p ; 

__attribute__((used)) static int
FUNC16 (FILE *dump, int verbose, rtx insn, int last_clock,
		    int clock, int *sort_p)
{
  int setup_clocks_p = FALSE;

  FUNC9 (insn && FUNC1 (insn));
  if ((reload_completed && FUNC13 (insn))
      || (last_scheduled_insn
	  && (FUNC0 (last_scheduled_insn) == CALL_INSN
	      || FUNC0 (FUNC4 (last_scheduled_insn)) == ASM_INPUT
	      || FUNC7 (FUNC4 (last_scheduled_insn)) >= 0)))
    {
      FUNC11 ();
      if (verbose && dump)
	FUNC8 (dump, "//    Stop should be before %d%s\n", FUNC2 (insn),
		 last_clock == clock ? " + cycle advance" : "");
      stop_before_p = 1;
      if (last_clock == clock)
	{
	  FUNC15 (curr_state, dfa_stop_insn);
	  if (TARGET_EARLY_STOP_BITS)
	    *sort_p = (last_scheduled_insn == NULL_RTX
		       || FUNC0 (last_scheduled_insn) != CALL_INSN);
	  else
	    *sort_p = 0;
	  return 1;
	}
      else if (reload_completed)
	setup_clocks_p = TRUE;
      if (FUNC0 (FUNC4 (last_scheduled_insn)) == ASM_INPUT
	  || FUNC7 (FUNC4 (last_scheduled_insn)) >= 0)
	FUNC14 (curr_state);
      else
	{
	  FUNC12 (curr_state, prev_cycle_state, dfa_state_size);
	  FUNC15 (curr_state, dfa_stop_insn);
	  FUNC15 (curr_state, dfa_pre_cycle_insn);
	  FUNC15 (curr_state, NULL);
	}
    }
  else if (reload_completed)
    setup_clocks_p = TRUE;
  if (setup_clocks_p && ia64_tune == PROCESSOR_ITANIUM
      && FUNC0 (FUNC4 (insn)) != ASM_INPUT
      && FUNC7 (FUNC4 (insn)) < 0)
    {
      enum attr_itanium_class c = FUNC10 (insn);

      if (c != ITANIUM_CLASS_MMMUL && c != ITANIUM_CLASS_MMSHF)
	{
	  rtx link;
	  int d = -1;

	  for (link = FUNC3 (insn); link; link = FUNC6 (link, 1))
	    if (FUNC5 (link) == 0)
	      {
		enum attr_itanium_class dep_class;
		rtx dep_insn = FUNC6 (link, 0);

		dep_class = FUNC10 (dep_insn);
		if ((dep_class == ITANIUM_CLASS_MMMUL
		     || dep_class == ITANIUM_CLASS_MMSHF)
		    && last_clock - clocks [FUNC2 (dep_insn)] < 4
		    && (d < 0
			|| last_clock - clocks [FUNC2 (dep_insn)] < d))
		  d = last_clock - clocks [FUNC2 (dep_insn)];
	      }
	  if (d >= 0)
	    add_cycles [FUNC2 (insn)] = 3 - d;
	}
    }
  return 0;
}