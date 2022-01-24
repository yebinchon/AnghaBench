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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int TYPE_QUAL_VOLATILE ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int FUNC10 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC11 (tree f1, tree f2)
{
  tree args1, args2;
  /* 1 if no need for warning yet, 2 if warning cause has been seen.  */
  int val = 1;
  int val1;
  tree ret1, ret2;

  ret1 = FUNC0 (f1);
  ret2 = FUNC0 (f2);

  /* 'volatile' qualifiers on a function's return type used to mean
     the function is noreturn.  */
  if (FUNC5 (ret1) != FUNC5 (ret2))
    FUNC8 ("function return types not compatible due to %<volatile%>");
  if (FUNC5 (ret1))
    ret1 = FUNC6 (FUNC3 (ret1),
				 FUNC4 (ret1) & ~TYPE_QUAL_VOLATILE);
  if (FUNC5 (ret2))
    ret2 = FUNC6 (FUNC3 (ret2),
				 FUNC4 (ret2) & ~TYPE_QUAL_VOLATILE);
  val = FUNC7 (ret1, ret2);
  if (val == 0)
    return 0;

  args1 = FUNC2 (f1);
  args2 = FUNC2 (f2);

  /* An unspecified parmlist matches any specified parmlist
     whose argument types don't need default promotions.  */

  if (args1 == 0)
    {
      if (!FUNC9 (args2))
	return 0;
      /* If one of these types comes from a non-prototype fn definition,
	 compare that with the other type's arglist.
	 If they don't match, ask for a warning (but no error).  */
      if (FUNC1 (f1)
	  && 1 != FUNC10 (args2, FUNC1 (f1)))
	val = 2;
      return val;
    }
  if (args2 == 0)
    {
      if (!FUNC9 (args1))
	return 0;
      if (FUNC1 (f2)
	  && 1 != FUNC10 (args1, FUNC1 (f2)))
	val = 2;
      return val;
    }

  /* Both types have argument lists: compare them and propagate results.  */
  val1 = FUNC10 (args1, args2);
  return val1 != 1 ? val1 : val;
}