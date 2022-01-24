#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_3__ {int /*<<< orphan*/  (* signed_or_unsigned_type ) (int,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {TYPE_1__ types; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*) ; 
 TYPE_2__ lang_hooks ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8 (tree arg0, tree arg1, tree other)
{
  int unsignedp1, unsignedpo;
  tree primarg0, primarg1, primother;
  unsigned int correct_width;

  if (FUNC6 (arg0, arg1, 0))
    return 1;

  if (! FUNC0 (FUNC2 (arg0))
      || ! FUNC0 (FUNC2 (arg1)))
    return 0;

  /* Discard any conversions that don't change the modes of ARG0 and ARG1
     and see if the inner values are the same.  This removes any
     signedness comparison, which doesn't matter here.  */
  primarg0 = arg0, primarg1 = arg1;
  FUNC1 (primarg0);
  FUNC1 (primarg1);
  if (FUNC6 (primarg0, primarg1, 0))
    return 1;

  /* Duplicate what shorten_compare does to ARG1 and see if that gives the
     actual comparison operand, ARG0.

     First throw away any conversions to wider types
     already present in the operands.  */

  primarg1 = FUNC5 (arg1, &unsignedp1);
  primother = FUNC5 (other, &unsignedpo);

  correct_width = FUNC3 (FUNC2 (arg1));
  if (unsignedp1 == unsignedpo
      && FUNC3 (FUNC2 (primarg1)) < correct_width
      && FUNC3 (FUNC2 (primother)) < correct_width)
    {
      tree type = FUNC2 (arg0);

      /* Make sure shorter operand is extended the right way
	 to match the longer operand.  */
      primarg1 = FUNC4 (lang_hooks.types.signed_or_unsigned_type
			       (unsignedp1, FUNC2 (primarg1)), primarg1);

      if (FUNC6 (arg0, FUNC4 (type, primarg1), 0))
	return 1;
    }

  return 0;
}