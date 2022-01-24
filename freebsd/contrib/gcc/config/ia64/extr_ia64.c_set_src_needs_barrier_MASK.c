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
struct reg_flags {int is_branch; } ;
typedef  scalar_t__ rtx ;

/* Variables and functions */
 scalar_t__ CALL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 scalar_t__ ZERO_EXTRACT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ pc_rtx ; 
 int FUNC7 (scalar_t__,struct reg_flags,int) ; 

__attribute__((used)) static int
FUNC8 (rtx x, struct reg_flags flags, int pred)
{
  int need_barrier = 0;
  rtx dst;
  rtx src = FUNC3 (x);

  if (FUNC0 (src) == CALL)
    /* We don't need to worry about the result registers that
       get written by subroutine call.  */
    return FUNC7 (src, flags, pred);
  else if (FUNC2 (x) == pc_rtx)
    {
      /* X is a conditional branch.  */
      /* ??? This seems redundant, as the caller sets this bit for
	 all JUMP_INSNs.  */
      if (!FUNC6 (src))
	flags.is_branch = 1;
      return FUNC7 (src, flags, pred);
    }

  if (FUNC6 (src))
    /* Avoid checking one register twice (in condition 
       and in 'then' section) for ldc pattern.  */
    {
      FUNC5 (FUNC1 (FUNC4 (src, 2)));
      need_barrier = FUNC7 (FUNC4 (src, 2), flags, pred);
		  
      /* We process MEM below.  */
      src = FUNC4 (src, 1);
    }

  need_barrier |= FUNC7 (src, flags, pred);

  dst = FUNC2 (x);
  if (FUNC0 (dst) == ZERO_EXTRACT)
    {
      need_barrier |= FUNC7 (FUNC4 (dst, 1), flags, pred);
      need_barrier |= FUNC7 (FUNC4 (dst, 2), flags, pred);
    }
  return need_barrier;
}