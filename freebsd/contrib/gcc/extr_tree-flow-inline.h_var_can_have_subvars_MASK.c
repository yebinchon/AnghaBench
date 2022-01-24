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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ COMPLEX_TYPE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool
FUNC7 (tree v)
{
  /* Volatile variables should never have subvars.  */
  if (FUNC5 (v))
    return false;

  /* Non decls or memory tags can never have subvars.  */
  if (!FUNC2 (v) || FUNC3 (v))
    return false;

  /* Aggregates can have subvars.  */
  if (FUNC0 (FUNC6 (v)))
    return true;

  /* Complex types variables which are not also a gimple register can
    have subvars. */
  if (FUNC4 (FUNC6 (v)) == COMPLEX_TYPE
      && !FUNC1 (v))
    return true;

  return false;
}