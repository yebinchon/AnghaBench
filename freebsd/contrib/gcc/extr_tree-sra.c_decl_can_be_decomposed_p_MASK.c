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
 int TDF_DETAILS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC7 (tree var)
{
  /* Early out for scalars.  */
  if (FUNC4 (FUNC1 (var)))
    return false;

  /* The variable must not be aliased.  */
  if (!FUNC3 (var))
    {
      if (dump_file && (dump_flags & TDF_DETAILS))
	{
	  FUNC2 (dump_file, "Cannot scalarize variable ");
	  FUNC5 (dump_file, var, dump_flags);
	  FUNC2 (dump_file, " because it must live in memory\n");
	}
      return false;
    }

  /* The variable must not be volatile.  */
  if (FUNC0 (var))
    {
      if (dump_file && (dump_flags & TDF_DETAILS))
	{
	  FUNC2 (dump_file, "Cannot scalarize variable ");
	  FUNC5 (dump_file, var, dump_flags);
	  FUNC2 (dump_file, " because it is declared volatile\n");
	}
      return false;
    }

  /* We must be able to decompose the variable's type.  */
  if (!FUNC6 (FUNC1 (var)))
    {
      if (dump_file && (dump_flags & TDF_DETAILS))
	{
	  FUNC2 (dump_file, "Cannot scalarize variable ");
	  FUNC5 (dump_file, var, dump_flags);
	  FUNC2 (dump_file, " because its type cannot be decomposed\n");
	}
      return false;
    }

  return true;
}