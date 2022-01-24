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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * fixed_regs ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10 (rtx insn)
{
  rtx set;
  rtx src, dest;

  /* If this isn't really an insn, we can't do anything.
     This can occur when flow deletes an insn that it has merged into an
     auto-increment address.  */
  if (! FUNC2 (insn))
    return 1;

  /* Never combine loads and stores involving hard regs that are likely
     to be spilled.  The register allocator can usually handle such
     reg-reg moves by tying.  If we allow the combiner to make
     substitutions of likely-spilled regs, reload might die.
     As an exception, we allow combinations involving fixed regs; these are
     not available to the register allocator so there's no risk involved.  */

  set = FUNC9 (insn);
  if (! set)
    return 0;
  src = FUNC7 (set);
  dest = FUNC6 (set);
  if (FUNC1 (src) == SUBREG)
    src = FUNC8 (src);
  if (FUNC1 (dest) == SUBREG)
    dest = FUNC8 (dest);
  if (FUNC5 (src) && FUNC5 (dest)
      && ((FUNC3 (src) < FIRST_PSEUDO_REGISTER
	   && ! fixed_regs[FUNC3 (src)]
	   && FUNC0 (FUNC4 (FUNC3 (src))))
	  || (FUNC3 (dest) < FIRST_PSEUDO_REGISTER
	      && ! fixed_regs[FUNC3 (dest)]
	      && FUNC0 (FUNC4 (FUNC3 (dest))))))
    return 1;

  return 0;
}