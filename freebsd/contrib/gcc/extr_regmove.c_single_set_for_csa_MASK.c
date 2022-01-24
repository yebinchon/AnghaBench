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
 scalar_t__ CLOBBER ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ PARALLEL ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ SET ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ USE ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 

__attribute__((used)) static rtx
FUNC8 (rtx insn)
{
  int i;
  rtx tmp = FUNC7 (insn);
  if (tmp)
    return tmp;

  if (!FUNC1 (insn)
      || FUNC0 (FUNC2 (insn)) != PARALLEL)
    return NULL_RTX;

  tmp = FUNC2 (insn);
  if (FUNC0 (FUNC5 (tmp, 0, 0)) != SET)
    return NULL_RTX;

  for (i = 1; i < FUNC6 (tmp, 0); ++i)
    {
      rtx this = FUNC5 (tmp, 0, i);

      /* The special case is allowing a no-op set.  */
      if (FUNC0 (this) == SET
	  && FUNC4 (this) == FUNC3 (this))
	;
      else if (FUNC0 (this) != CLOBBER
	       && FUNC0 (this) != USE)
	return NULL_RTX;
    }

  return FUNC5 (tmp, 0, 0);
}