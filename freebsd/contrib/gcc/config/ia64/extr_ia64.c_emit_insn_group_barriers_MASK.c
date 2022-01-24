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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ CODE_LABEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ INSN ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ NOTE ; 
 scalar_t__ NOTE_INSN_BASIC_BLOCK ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ UNSPECV_INSN_GROUP_BARRIER ; 
 scalar_t__ UNSPEC_VOLATILE ; 
 scalar_t__ FUNC7 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 () ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 () ; 

__attribute__((used)) static void
FUNC14 (FILE *dump)
{
  rtx insn;
  rtx last_label = 0;
  int insns_since_last_label = 0;

  FUNC13 ();

  for (insn = FUNC11 (); insn; insn = FUNC4 (insn))
    {
      if (FUNC1 (insn) == CODE_LABEL)
	{
	  if (insns_since_last_label)
	    last_label = insn;
	  insns_since_last_label = 0;
	}
      else if (FUNC1 (insn) == NOTE
	       && FUNC5 (insn) == NOTE_INSN_BASIC_BLOCK)
	{
	  if (insns_since_last_label)
	    last_label = insn;
	  insns_since_last_label = 0;
	}
      else if (FUNC1 (insn) == INSN
	       && FUNC1 (FUNC6 (insn)) == UNSPEC_VOLATILE
	       && FUNC7 (FUNC6 (insn), 1) == UNSPECV_INSN_GROUP_BARRIER)
	{
	  FUNC13 ();
	  last_label = 0;
	}
      else if (FUNC2 (insn))
	{
	  insns_since_last_label = 1;

	  if (FUNC12 (insn))
	    {
	      if (last_label)
		{
		  if (dump)
		    FUNC9 (dump, "Emitting stop before label %d\n",
			     FUNC3 (last_label));
		  FUNC8 (FUNC10 (FUNC0 (3)), last_label);
		  insn = last_label;

		  FUNC13 ();
		  last_label = 0;
		}
	    }
	}
    }
}