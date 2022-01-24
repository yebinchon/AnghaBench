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
 scalar_t__ ADDR_DIFF_VEC ; 
 scalar_t__ ADDR_VEC ; 
 scalar_t__ CALL_INSN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ JUMP_INSN ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 () ; 
 int FUNC10 (scalar_t__) ; 

__attribute__((used)) static void
FUNC11 (void)
{
  rtx insn, start = FUNC9 ();
  int nbytes = 0, njumps = 0;
  int isjump = 0;

  /* Look for all minimal intervals of instructions containing 4 jumps.
     The intervals are bounded by START and INSN.  NBYTES is the total
     size of instructions in the interval including INSN and not including
     START.  When the NBYTES is smaller than 16 bytes, it is possible
     that the end of START and INSN ends up in the same 16byte page.

     The smallest offset in the page INSN can start is the case where START
     ends on the offset 0.  Offset of INSN is then NBYTES - sizeof (INSN).
     We add p2align to 16byte window with maxskip 17 - NBYTES + sizeof (INSN).
     */
  for (insn = FUNC9 (); insn; insn = FUNC3 (insn))
    {

      nbytes += FUNC10 (insn);
      if (dump_file)
        FUNC6(dump_file, "Insn %i estimated to %i bytes\n",
		FUNC2 (insn), FUNC10 (insn));
      if ((FUNC1 (insn) == JUMP_INSN
	   && FUNC1 (FUNC4 (insn)) != ADDR_VEC
	   && FUNC1 (FUNC4 (insn)) != ADDR_DIFF_VEC)
	  || FUNC1 (insn) == CALL_INSN)
	njumps++;
      else
	continue;

      while (njumps > 3)
	{
	  start = FUNC3 (start);
	  if ((FUNC1 (start) == JUMP_INSN
	       && FUNC1 (FUNC4 (start)) != ADDR_VEC
	       && FUNC1 (FUNC4 (start)) != ADDR_DIFF_VEC)
	      || FUNC1 (start) == CALL_INSN)
	    njumps--, isjump = 1;
	  else
	    isjump = 0;
	  nbytes -= FUNC10 (start);
	}
      FUNC7 (njumps >= 0);
      if (dump_file)
        FUNC6 (dump_file, "Interval %i to %i has %i bytes\n",
		FUNC2 (start), FUNC2 (insn), nbytes);

      if (njumps == 3 && isjump && nbytes < 16)
	{
	  int padsize = 15 - nbytes + FUNC10 (insn);

	  if (dump_file)
	    FUNC6 (dump_file, "Padding insn %i by %i bytes!\n",
		     FUNC2 (insn), padsize);
          FUNC5 (FUNC8 (FUNC0 (padsize)), insn);
	}
    }
}