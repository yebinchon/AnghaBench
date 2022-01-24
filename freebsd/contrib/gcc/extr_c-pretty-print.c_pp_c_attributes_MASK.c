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
typedef  int /*<<< orphan*/  c_pretty_printer ;

/* Variables and functions */
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC9 (c_pretty_printer *pp, tree attributes)
{
  if (attributes == NULL_TREE)
    return;

  FUNC4 (pp, "__attribute__");
  FUNC5 (pp);
  FUNC5 (pp);
  for (; attributes != NULL_TREE; attributes = FUNC0 (attributes))
    {
      FUNC8 (pp, FUNC1 (attributes));
      if (FUNC2 (attributes))
	FUNC3 (pp, FUNC2 (attributes));

      if (FUNC0 (attributes))
	FUNC7 (pp, ',');
    }
  FUNC6 (pp);
  FUNC6 (pp);
}