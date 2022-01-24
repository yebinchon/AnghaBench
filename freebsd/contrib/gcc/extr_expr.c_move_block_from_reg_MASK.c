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

/* Variables and functions */
 int /*<<< orphan*/  BLKmode ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ HAVE_store_multiple ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 (scalar_t__,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  word_mode ; 

void
FUNC9 (int regno, rtx x, int nregs)
{
  int i;

  if (nregs == 0)
    return;

  /* See if the machine can do this with a store multiple insn.  */
#ifdef HAVE_store_multiple
  if (HAVE_store_multiple)
    {
      rtx last = get_last_insn ();
      rtx pat = gen_store_multiple (x, gen_rtx_REG (word_mode, regno),
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
    {
      rtx tem = FUNC8 (x, i, 1, BLKmode);

      FUNC4 (tem);

      FUNC3 (tem, FUNC5 (word_mode, regno + i));
    }
}