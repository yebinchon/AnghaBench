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
typedef  int /*<<< orphan*/  cxx_pretty_printer ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  STRING_CST 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6 (cxx_pretty_printer *pp, tree t)
{
  switch (FUNC1 (t))
    {
    case STRING_CST:
      {
	const bool in_parens = FUNC0 (t);
	if (in_parens)
	  FUNC4 (pp);
	FUNC3 (FUNC2 (pp), t);
	if (in_parens)
	  FUNC5 (pp);
      }
      break;

    default:
      FUNC3 (FUNC2 (pp), t);
      break;
    }
}