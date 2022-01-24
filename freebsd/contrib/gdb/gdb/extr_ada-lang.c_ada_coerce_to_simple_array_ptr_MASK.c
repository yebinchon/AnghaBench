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
struct type {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct value*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct type* FUNC3 (struct value*,int) ; 
 struct value* FUNC4 (struct value*) ; 
 int /*<<< orphan*/  FUNC5 (struct value*) ; 
 struct value* FUNC6 (struct type*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

struct value *
FUNC8 (struct value *arr)
{
  if (FUNC1 (FUNC0 (arr)))
    {
      struct type *arrType = FUNC3 (arr, 1);
      if (arrType == NULL)
	return NULL;
      return FUNC6 (arrType, FUNC7 (FUNC5 (arr)));
    }
  else if (FUNC2 (FUNC0 (arr)))
    return FUNC4 (arr);
  else
    return arr;
}