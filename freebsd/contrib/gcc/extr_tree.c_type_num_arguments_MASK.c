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
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4 (tree type)
{
  int i = 0;
  tree t;

  for (t = FUNC2 (type); t; t = FUNC0 (t))
    /* If the function does not take a variable number of arguments,
       the last element in the list will have type `void'.  */
    if (FUNC3 (FUNC1 (t)))
      break;
    else
      ++i;

  return i;
}