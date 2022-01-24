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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TREE_VEC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (tree args)
{
  int i;
  int length = FUNC3 (args);

  FUNC0 ("template-args", args);

  FUNC5 ('I');

  FUNC4 (length > 0);

  if (FUNC1 (FUNC2 (args, 0)) == TREE_VEC)
    {
      /* We have nested template args.  We want the innermost template
	 argument list.  */
      args = FUNC2 (args, length - 1);
      length = FUNC3 (args);
    }
  for (i = 0; i < length; ++i)
    FUNC6 (FUNC2 (args, i));

  FUNC5 ('E');
}