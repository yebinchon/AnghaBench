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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 unsigned int FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (scalar_t__) ; 
 int FUNC3 (size_t) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 
 scalar_t__ SUBREG ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hard_reg_copy_preferences ; 
 int /*<<< orphan*/  hard_reg_full_preferences ; 
 int /*<<< orphan*/  hard_reg_preferences ; 
 unsigned int** hard_regno_nregs ; 
 scalar_t__* reg_allocno ; 
 unsigned int* reg_renumber ; 
 scalar_t__ FUNC10 (unsigned int,size_t,int,size_t) ; 

__attribute__((used)) static void
FUNC11 (rtx dest, rtx src)
{
  unsigned int src_regno, dest_regno;
  /* Amount to add to the hard regno for SRC, or subtract from that for DEST,
     to compensate for subregs in SRC or DEST.  */
  int offset = 0;
  unsigned int i;
  int copy = 1;

  if (FUNC2 (FUNC0 (src))[0] == 'e')
    src = FUNC9 (src, 0), copy = 0;

  /* Get the reg number for both SRC and DEST.
     If neither is a reg, give up.  */

  if (FUNC5 (src))
    src_regno = FUNC4 (src);
  else if (FUNC0 (src) == SUBREG && FUNC5 (FUNC8 (src)))
    {
      src_regno = FUNC4 (FUNC8 (src));

      if (FUNC4 (FUNC8 (src)) < FIRST_PSEUDO_REGISTER)
	offset += FUNC10 (FUNC4 (FUNC8 (src)),
				       FUNC1 (FUNC8 (src)),
				       FUNC7 (src),
				       FUNC1 (src));
      else
	offset += (FUNC7 (src)
		   / FUNC3 (FUNC1 (src)));
    }
  else
    return;

  if (FUNC5 (dest))
    dest_regno = FUNC4 (dest);
  else if (FUNC0 (dest) == SUBREG && FUNC5 (FUNC8 (dest)))
    {
      dest_regno = FUNC4 (FUNC8 (dest));

      if (FUNC4 (FUNC8 (dest)) < FIRST_PSEUDO_REGISTER)
	offset -= FUNC10 (FUNC4 (FUNC8 (dest)),
				       FUNC1 (FUNC8 (dest)),
				       FUNC7 (dest),
				       FUNC1 (dest));
      else
	offset -= (FUNC7 (dest)
		   / FUNC3 (FUNC1 (dest)));
    }
  else
    return;

  /* Convert either or both to hard reg numbers.  */

  if (reg_renumber[src_regno] >= 0)
    src_regno = reg_renumber[src_regno];

  if (reg_renumber[dest_regno] >= 0)
    dest_regno = reg_renumber[dest_regno];

  /* Now if one is a hard reg and the other is a global pseudo
     then give the other a preference.  */

  if (dest_regno < FIRST_PSEUDO_REGISTER && src_regno >= FIRST_PSEUDO_REGISTER
      && reg_allocno[src_regno] >= 0)
    {
      dest_regno -= offset;
      if (dest_regno < FIRST_PSEUDO_REGISTER)
	{
	  if (copy)
	    FUNC6 (hard_reg_copy_preferences,
			reg_allocno[src_regno], dest_regno);

	  FUNC6 (hard_reg_preferences,
		      reg_allocno[src_regno], dest_regno);
	  for (i = dest_regno;
	       i < dest_regno + hard_regno_nregs[dest_regno][FUNC1 (dest)];
	       i++)
	    FUNC6 (hard_reg_full_preferences, reg_allocno[src_regno], i);
	}
    }

  if (src_regno < FIRST_PSEUDO_REGISTER && dest_regno >= FIRST_PSEUDO_REGISTER
      && reg_allocno[dest_regno] >= 0)
    {
      src_regno += offset;
      if (src_regno < FIRST_PSEUDO_REGISTER)
	{
	  if (copy)
	    FUNC6 (hard_reg_copy_preferences,
			reg_allocno[dest_regno], src_regno);

	  FUNC6 (hard_reg_preferences,
		      reg_allocno[dest_regno], src_regno);
	  for (i = src_regno;
	       i < src_regno + hard_regno_nregs[src_regno][FUNC1 (src)];
	       i++)
	    FUNC6 (hard_reg_full_preferences, reg_allocno[dest_regno], i);
	}
    }
}