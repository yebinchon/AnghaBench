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
typedef  scalar_t__ tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ processing_template_decl ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC9 (tree t1, tree t2, bool allow_redeclaration)
{
  tree d1;
  tree d2;
  tree max1, max2;

  if (t1 == t2)
    return true;

  /* The type of the array elements must be the same.  */
  if (!FUNC7 (FUNC0 (t1), FUNC0 (t2)))
    return false;

  d1 = FUNC1 (t1);
  d2 = FUNC1 (t2);

  if (d1 == d2)
    return true;

  /* If one of the arrays is dimensionless, and the other has a
     dimension, they are of different types.  However, it is valid to
     write:

       extern int a[];
       int a[3];

     by [basic.link]:

       declarations for an array object can specify
       array types that differ by the presence or absence of a major
       array bound (_dcl.array_).  */
  if (!d1 || !d2)
    return allow_redeclaration;

  /* Check that the dimensions are the same.  */

  if (!FUNC5 (FUNC3 (d1), FUNC3 (d2)))
    return false;
  max1 = FUNC2 (d1);
  max2 = FUNC2 (d2);
  if (processing_template_decl && !FUNC4 (2)
      && !FUNC8 (max1)
      && !FUNC8 (max2))
    {
      /* With abi-1 we do not fold non-dependent array bounds, (and
	 consequently mangle them incorrectly).  We must therefore
	 fold them here, to verify the domains have the same
	 value.  */
      max1 = FUNC6 (max1);
      max2 = FUNC6 (max2);
    }

  if (!FUNC5 (max1, max2))
    return false;

  return true;
}