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
 scalar_t__ TYPE_CODE_CLASS ; 
 struct type* FUNC1 (struct type*) ; 
 scalar_t__ FUNC2 (struct type*) ; 
 struct type** FUNC3 (struct type*) ; 

int
FUNC4 (struct type *base, struct type *dclass)
{
  struct type *vbase;
  int i, j;
  struct type *primary;

  if ((FUNC0 (dclass) != TYPE_CODE_CLASS) ||
      (FUNC0 (base) != TYPE_CODE_CLASS))
    return -1;

  primary = FUNC2 (dclass) ? FUNC1 (dclass) : NULL;

  j = -1;
  i = 0;
  vbase = FUNC3 (dclass)[0];
  while (vbase)
    {
      if (!primary || (FUNC4 (vbase, primary) < 0))
	j++;
      if (vbase == base)
	break;
      vbase = FUNC3 (dclass)[++i];
    }

  return vbase ? j : -1;
}