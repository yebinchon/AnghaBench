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
typedef  scalar_t__ optab ;
typedef  enum optab_methods { ____Placeholder_optab_methods } optab_methods ;

/* Variables and functions */
 scalar_t__ BITS_PER_WORD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ ashr_optab ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int) ; 
 int /*<<< orphan*/  word_mode ; 

__attribute__((used)) static bool
FUNC4 (optab binoptab, rtx outof_input, rtx superword_op1,
			rtx outof_target, rtx into_target,
			int unsignedp, enum optab_methods methods)
{
  if (into_target != 0)
    if (!FUNC3 (word_mode, binoptab, outof_input, superword_op1,
			     into_target, unsignedp, methods))
      return false;

  if (outof_target != 0)
    {
      /* For a signed right shift, we must fill OUTOF_TARGET with copies
	 of the sign bit, otherwise we must fill it with zeros.  */
      if (binoptab != ashr_optab)
	FUNC2 (outof_target, FUNC0 (word_mode));
      else
	if (!FUNC3 (word_mode, binoptab,
				 outof_input, FUNC1 (BITS_PER_WORD - 1),
				 outof_target, unsignedp, methods))
	  return false;
    }
  return true;
}