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
typedef  int DECL_UNINLINABLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ flag_really_no_inline ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

int
FUNC12 (tree* fnp)
{
  tree fn = *fnp;

  /* We can inline a template instantiation only if it's fully
     instantiated.  */
  if (FUNC4 (fn)
      && FUNC6 (FUNC4 (fn)))
    {
      /* Don't instantiate functions that are not going to be
	 inlined.  */
      if (!FUNC2 (FUNC5
			(FUNC10 (fn))))
	return 1;

      fn = *fnp = FUNC8 (fn, /*defer_ok=*/0, /*undefined_ok=*/0);

      if (FUNC6 (FUNC4 (fn)))
	return 1;
    }

  if (flag_really_no_inline
      && FUNC9 ("always_inline", FUNC0 (fn)) == NULL)
    return 1;

  /* Don't auto-inline functions that might be replaced at link-time
     with an alternative definition.  */ 
  if (!FUNC1 (fn) && FUNC3 (fn))
    {
      DECL_UNINLINABLE (fn) = 1;
      return 1;
    }

  if (FUNC11 (fn))
    {
      DECL_UNINLINABLE (fn) = 1;
      return 1;
    }

  if (! FUNC7 (fn))
    {
      DECL_UNINLINABLE (fn) = 1;
      return 1;
    }

  return 0;
}