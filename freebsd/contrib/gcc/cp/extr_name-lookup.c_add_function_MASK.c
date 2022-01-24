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
struct arg_lookup {scalar_t__ functions; scalar_t__ name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC4 (struct arg_lookup *k, tree fn)
{
  /* We used to check here to see if the function was already in the list,
     but that's O(n^2), which is just too expensive for function lookup.
     Now we deal with the occasional duplicate in joust.  In doing this, we
     assume that the number of duplicates will be small compared to the
     total number of functions being compared, which should usually be the
     case.  */

  /* We must find only functions, or exactly one non-function.  */
  if (!k->functions)
    k->functions = fn;
  else if (fn == k->functions)
    ;
  else if (FUNC3 (k->functions) && FUNC3 (fn))
    k->functions = FUNC1 (fn, k->functions);
  else
    {
      tree f1 = FUNC0 (k->functions);
      tree f2 = fn;
      if (FUNC3 (f1))
	{
	  fn = f1; f1 = f2; f2 = fn;
	}
      FUNC2 ("%q+D is not a function,", f1);
      FUNC2 ("  conflict with %q+D", f2);
      FUNC2 ("  in call to %qD", k->name);
      return true;
    }

  return false;
}