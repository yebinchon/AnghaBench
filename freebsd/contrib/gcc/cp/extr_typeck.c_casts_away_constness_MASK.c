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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 scalar_t__ POINTER_TYPE ; 
 scalar_t__ REFERENCE_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC8 (tree t1, tree t2)
{
  if (FUNC0 (t2) == REFERENCE_TYPE)
    {
      /* [expr.const.cast]

	 Casting from an lvalue of type T1 to an lvalue of type T2
	 using a reference cast casts away constness if a cast from an
	 rvalue of type "pointer to T1" to the type "pointer to T2"
	 casts away constness.  */
      t1 = (FUNC0 (t1) == REFERENCE_TYPE ? FUNC1 (t1) : t1);
      return FUNC8 (FUNC5 (t1),
				   FUNC5 (FUNC1 (t2)));
    }

  if (FUNC3 (t1) && FUNC3 (t2))
    /* [expr.const.cast]

       Casting from an rvalue of type "pointer to data member of X
       of type T1" to the type "pointer to data member of Y of type
       T2" casts away constness if a cast from an rvalue of type
       "pointer to T1" to the type "pointer to T2" casts away
       constness.  */
    return FUNC8
      (FUNC5 (FUNC4 (t1)),
       FUNC5 (FUNC4 (t2)));

  /* Casting away constness is only something that makes sense for
     pointer or reference types.  */
  if (FUNC0 (t1) != POINTER_TYPE
      || FUNC0 (t2) != POINTER_TYPE)
    return false;

  /* Top-level qualifiers don't matter.  */
  t1 = FUNC2 (t1);
  t2 = FUNC2 (t2);
  FUNC7 (&t1, &t2);
  if (!FUNC6 (t2, t1))
    return true;

  return false;
}