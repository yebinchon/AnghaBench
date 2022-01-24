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
struct type {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_VOID ; 
 scalar_t__ FUNC1 (struct type*) ; 
 scalar_t__ FUNC2 (struct type*) ; 
 int /*<<< orphan*/ * FUNC3 (struct type*) ; 

int
FUNC4 (struct type *type0, struct type *type1)
{
  if (type1 == NULL)
    return 1;
  else if (type0 == NULL)
    return 0;
  else if (FUNC0 (type1) == TYPE_CODE_VOID)
    return 1;
  else if (FUNC0 (type0) == TYPE_CODE_VOID)
    return 0;
  else if (FUNC2 (type0))
    return 1;
  else if (FUNC1 (type0)
	   && !FUNC1 (type1))
    return 1;
  else if (FUNC3 (type0) != NULL
	   && FUNC3 (type1) == NULL)
    return 1;
  return 0;
}