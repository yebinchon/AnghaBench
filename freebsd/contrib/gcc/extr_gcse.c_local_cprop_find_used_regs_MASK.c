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
 int /*<<< orphan*/  BITS_PER_WORD ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  POST_DEC 137 
#define  POST_INC 136 
#define  POST_MODIFY 135 
#define  PRE_DEC 134 
#define  PRE_INC 133 
#define  PRE_MODIFY 132 
#define  SIGN_EXTRACT 131 
#define  STRICT_LOW_PART 130 
#define  SUBREG 129 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
#define  ZERO_EXTRACT 128 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,void*) ; 

__attribute__((used)) static void
FUNC5 (rtx *xptr, void *data)
{
  rtx x = *xptr;

  if (x == 0)
    return;

  switch (FUNC0 (x))
    {
    case ZERO_EXTRACT:
    case SIGN_EXTRACT:
    case STRICT_LOW_PART:
      return;

    case PRE_DEC:
    case PRE_INC:
    case POST_DEC:
    case POST_INC:
    case PRE_MODIFY:
    case POST_MODIFY:
      /* Can only legitimately appear this early in the context of
	 stack pushes for function arguments, but handle all of the
	 codes nonetheless.  */
      return;

    case SUBREG:
      /* Setting a subreg of a register larger than word_mode leaves
	 the non-written words unchanged.  */
      if (FUNC2 (FUNC1 (FUNC3 (x))) > BITS_PER_WORD)
	return;
      break;

    default:
      break;
    }

  FUNC4 (xptr, data);
}