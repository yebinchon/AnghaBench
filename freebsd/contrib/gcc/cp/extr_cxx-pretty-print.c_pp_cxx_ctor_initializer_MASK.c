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
typedef  int /*<<< orphan*/  cxx_pretty_printer ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9 (cxx_pretty_printer *pp, tree t)
{
  t = FUNC1 (t, 0);
  FUNC8 (pp);
  FUNC4 (pp);
  FUNC8 (pp);
  for (; t; t = FUNC0 (t))
    {
      FUNC6 (pp, FUNC2 (t));
      FUNC5 (pp, FUNC3 (t));
      if (FUNC0 (t))
	FUNC7 (pp, ',');
    }
}