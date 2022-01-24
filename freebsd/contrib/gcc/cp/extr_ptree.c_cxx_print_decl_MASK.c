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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FIELD_DECL ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TS_DECL_COMMON ; 
 scalar_t__ TYPE_DECL ; 
 scalar_t__ VAR_DECL ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

void
FUNC9 (FILE *file, tree node, int indent)
{
  if (FUNC6 (node) == FIELD_DECL)
    {
      if (FUNC2 (node))
	{
	  FUNC8 (file, indent + 3);
	  FUNC7 (file, " mutable ");
	}
      return;
    }

  if (!FUNC0 (FUNC6 (node), TS_DECL_COMMON)
      || !FUNC1 (node))
    return;
  FUNC8 (file, indent + 3);
  if (FUNC6 (node) == FUNCTION_DECL
      && FUNC3 (node))
    FUNC7 (file, " pending-inline-info %p",
	     (void *) FUNC3 (node));
  if (FUNC6 (node) == TYPE_DECL
      && FUNC4 (node))
    FUNC7 (file, " sorted-fields %p",
	     (void *) FUNC4 (node));
  if ((FUNC6 (node) == FUNCTION_DECL || FUNC6 (node) == VAR_DECL)
      && FUNC5 (node))
    FUNC7 (file, " template-info %p",
	     (void *) FUNC5 (node));
}