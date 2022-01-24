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
struct subscript {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct subscript*) ; 
 scalar_t__ FUNC1 (struct subscript*) ; 
 scalar_t__ FUNC2 (struct subscript*) ; 
 scalar_t__ FUNC3 (struct subscript*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ chrec_known ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

void 
FUNC7 (FILE *outf, struct subscript *subscript)
{
  tree chrec = FUNC0 (subscript);

  FUNC5 (outf, "\n (subscript \n");
  FUNC5 (outf, "  iterations_that_access_an_element_twice_in_A: ");
  FUNC6 (outf, chrec, 0);
  if (chrec == chrec_known)
    FUNC5 (outf, "    (no dependence)\n");
  else if (FUNC4 (chrec))
    FUNC5 (outf, "    (don't know)\n");
  else
    {
      tree last_iteration = FUNC3 (subscript);
      FUNC5 (outf, "  last_conflict: ");
      FUNC6 (outf, last_iteration, 0);
    }
	  
  chrec = FUNC1 (subscript);
  FUNC5 (outf, "  iterations_that_access_an_element_twice_in_B: ");
  FUNC6 (outf, chrec, 0);
  if (chrec == chrec_known)
    FUNC5 (outf, "    (no dependence)\n");
  else if (FUNC4 (chrec))
    FUNC5 (outf, "    (don't know)\n");
  else
    {
      tree last_iteration = FUNC3 (subscript);
      FUNC5 (outf, "  last_conflict: ");
      FUNC6 (outf, last_iteration, 0);
    }

  FUNC5 (outf, "  (Subscript distance: ");
  FUNC6 (outf, FUNC2 (subscript), 0);
  FUNC5 (outf, "  )\n");
  FUNC5 (outf, " )\n");
}