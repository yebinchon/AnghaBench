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
 scalar_t__ BITS_PER_WORD ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ SET ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ SUBREG ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  mem_last_set ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 

__attribute__((used)) static void
FUNC13 (rtx dest, rtx setter, void *data)
{
  rtx record_dead_insn = (rtx) data;

  if (FUNC0 (dest) == SUBREG)
    dest = FUNC8 (dest);

  if (!record_dead_insn)
    {
      if (FUNC5 (dest))
	FUNC11 (dest, NULL_RTX, NULL_RTX);
      return;
    }

  if (FUNC5 (dest))
    {
      /* If we are setting the whole register, we know its value.  Otherwise
	 show that we don't know the value.  We can handle SUBREG in
	 some cases.  */
      if (FUNC0 (setter) == SET && dest == FUNC6 (setter))
	FUNC11 (dest, record_dead_insn, FUNC7 (setter));
      else if (FUNC0 (setter) == SET
	       && FUNC0 (FUNC6 (setter)) == SUBREG
	       && FUNC8 (FUNC6 (setter)) == dest
	       && FUNC2 (FUNC1 (dest)) <= BITS_PER_WORD
	       && FUNC12 (FUNC6 (setter)))
	FUNC11 (dest, record_dead_insn,
			      FUNC9 (FUNC1 (dest),
						       FUNC7 (setter)));
      else
	FUNC11 (dest, record_dead_insn, NULL_RTX);
    }
  else if (FUNC4 (dest)
	   /* Ignore pushes, they clobber nothing.  */
	   && ! FUNC10 (dest, FUNC1 (dest)))
    mem_last_set = FUNC3 (record_dead_insn);
}