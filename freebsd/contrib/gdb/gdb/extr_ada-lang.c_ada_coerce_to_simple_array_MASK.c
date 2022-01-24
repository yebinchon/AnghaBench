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
struct value {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct value*) ; 
 struct value* FUNC1 (struct value*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct value* FUNC4 (struct value*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 struct value* FUNC6 (struct value*) ; 

struct value *
FUNC7 (struct value *arr)
{
  if (FUNC2 (FUNC0 (arr)))
    {
      struct value *arrVal = FUNC1 (arr);
      if (arrVal == NULL)
	FUNC5 ("Bounds unavailable for null array pointer.");
      return FUNC6 (arrVal);
    }
  else if (FUNC3 (FUNC0 (arr)))
    return FUNC4 (arr);
  else
    return arr;
}