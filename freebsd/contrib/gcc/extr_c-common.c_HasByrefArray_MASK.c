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
 scalar_t__ ARRAY_TYPE ; 
 scalar_t__ RECORD_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

int FUNC4(tree byrefType)
{
  tree s1;
  /* Check for possibility of an error condition. */
  if (FUNC1(byrefType) != RECORD_TYPE)
    return 0;

  for (s1 = FUNC3 (byrefType); s1; s1 = FUNC0 (s1))
    {
      if (FUNC1(FUNC2(s1)) == ARRAY_TYPE)
	 return 1;
    }
  return 0;
}