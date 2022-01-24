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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ QUAL_UNION_TYPE ; 
 scalar_t__ RECORD_TYPE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ UNION_TYPE ; 

int
FUNC4 (tree type) 
{
  int count = 0;
  /* Strip the *'s off.  */
  if (!type)
    return -1;
  type = FUNC3 (type);
  while (FUNC0 (type) || FUNC1 (type) == ARRAY_TYPE)
    {
      type = FUNC3 (FUNC2 (type));
      count++;
    }

  /* We are interested in records, and unions only.  */
  if (FUNC1 (type) == RECORD_TYPE 
      || FUNC1 (type) == QUAL_UNION_TYPE 
      || FUNC1 (type) == UNION_TYPE)
    return count;
  else 
    return -1;
}