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
 scalar_t__ SCOPE_REF ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static bool
FUNC7 (tree expression, bool criterion (tree))
{
  tree scope;
  tree name;

  FUNC6 (FUNC1 (expression) == SCOPE_REF);

  if (!FUNC3 (FUNC2 (expression, 0)))
    return true;

  scope = FUNC2 (expression, 0);
  name = FUNC2 (expression, 1);

  /* [temp.dep.expr]

     An id-expression is type-dependent if it contains a
     nested-name-specifier that contains a class-name that names a
     dependent type.  */
  /* The suggested resolution to Core Issue 2 implies that if the
     qualifying type is the current class, then we must peek
     inside it.  */
  if (FUNC0 (name)
      && FUNC4 (scope)
      && !criterion (name))
    return false;
  if (FUNC5 (scope))
    return true;

  return false;
}