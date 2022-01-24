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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ALIGN_INDIRECT_REF ; 
 scalar_t__ COMPONENT_REF ; 
 scalar_t__ INDIRECT_REF ; 
 scalar_t__ MISALIGNED_INDIRECT_REF ; 
 scalar_t__ RESULT_DECL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 

void
FUNC5 (FILE *outfile, tree expr)
{
  if (FUNC0 (expr) == COMPONENT_REF)
    {
      if (FUNC1 (expr, 0))
	FUNC5 (outfile, FUNC1 (expr, 0));
      else
	FUNC3 (" <variable>", outfile);
      FUNC2 ('.', outfile);
      FUNC4 (outfile, FUNC1 (expr, 1));
    }
  else if (FUNC0 (expr) == INDIRECT_REF)
    {
      FUNC3 (" (*", outfile);
      FUNC5 (outfile, FUNC1 (expr, 0));
      FUNC3 (")", outfile);
    }
  else if (FUNC0 (expr) == ALIGN_INDIRECT_REF)
    {
      FUNC3 (" (A*", outfile);
      FUNC5 (outfile, FUNC1 (expr, 0));
      FUNC3 (")", outfile);
    }
  else if (FUNC0 (expr) == MISALIGNED_INDIRECT_REF)
    {
      FUNC3 (" (M*", outfile);
      FUNC5 (outfile, FUNC1 (expr, 0));
      FUNC3 (")", outfile);
    }
  else if (FUNC0 (expr) == RESULT_DECL)
    FUNC3 (" <result>", outfile);
  else
    {
      FUNC2 (' ', outfile);
      FUNC4 (outfile, expr);
    }
}