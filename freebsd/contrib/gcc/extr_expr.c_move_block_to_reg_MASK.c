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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ HAVE_load_multiple ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  word_mode ; 

void
FUNC12 (int regno, rtx x, int nregs, enum machine_mode mode)
{
  int i;
#ifdef HAVE_load_multiple
  rtx pat;
  rtx last;
#endif

  if (nregs == 0)
    return;

  if (FUNC0 (x) && ! FUNC2 (x))
    x = FUNC11 (FUNC6 (mode, x));

  /* See if the machine can do this with a load multiple insn.  */
#ifdef HAVE_load_multiple
  if (HAVE_load_multiple)
    {
      last = get_last_insn ();
      pat = gen_load_multiple (gen_rtx_REG (word_mode, regno), x,
			       GEN_INT (nregs));
      if (pat)
	{
	  emit_insn (pat);
	  return;
	}
      else
	delete_insns_since (last);
    }
#endif

  for (i = 0; i < nregs; i++)
    FUNC5 (FUNC8 (word_mode, regno + i),
		    FUNC10 (x, i, mode));
}