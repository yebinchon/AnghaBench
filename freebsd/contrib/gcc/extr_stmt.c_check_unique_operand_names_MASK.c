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

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static bool
FUNC5 (tree outputs, tree inputs)
{
  tree i, j;

  for (i = outputs; i ; i = FUNC0 (i))
    {
      tree i_name = FUNC1 (FUNC1 (i));
      if (! i_name)
	continue;

      for (j = FUNC0 (i); j ; j = FUNC0 (j))
	if (FUNC4 (i_name, FUNC1 (FUNC1 (j))))
	  goto failure;
    }

  for (i = inputs; i ; i = FUNC0 (i))
    {
      tree i_name = FUNC1 (FUNC1 (i));
      if (! i_name)
	continue;

      for (j = FUNC0 (i); j ; j = FUNC0 (j))
	if (FUNC4 (i_name, FUNC1 (FUNC1 (j))))
	  goto failure;
      for (j = outputs; j ; j = FUNC0 (j))
	if (FUNC4 (i_name, FUNC1 (FUNC1 (j))))
	  goto failure;
    }

  return true;

 failure:
  FUNC3 ("duplicate asm operand name %qs",
	 FUNC2 (FUNC1 (FUNC1 (i))));
  return false;
}