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
typedef  int /*<<< orphan*/  pretty_printer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 char** tree_code_name ; 

__attribute__((used)) static void
FUNC7 (pretty_printer *buffer, tree node)
{
  int i, len;

  FUNC6 (buffer, "<<< Unknown tree: ");
  FUNC6 (buffer, tree_code_name[(int) FUNC1 (node)]);

  if (FUNC0 (node))
    {
      len = FUNC2 (FUNC1 (node));
      for (i = 0; i < len; ++i)
	{
	  FUNC5 (buffer, 2);
	  FUNC4 (buffer, FUNC3 (node, i), 2, 0, false);
	}
    }

  FUNC6 (buffer, " >>>\n");
}