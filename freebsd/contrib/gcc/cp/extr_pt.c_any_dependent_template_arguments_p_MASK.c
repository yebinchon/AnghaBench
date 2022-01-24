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
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ error_mark_node ; 

bool
FUNC5 (tree args)
{
  int i;
  int j;

  if (!args)
    return false;
  if (args == error_mark_node)
    return true;

  for (i = 0; i < FUNC0 (args); ++i)
    {
      tree level = FUNC1 (args, i + 1);
      for (j = 0; j < FUNC3 (level); ++j)
	if (FUNC4 (FUNC2 (level, j)))
	  return true;
    }

  return false;
}