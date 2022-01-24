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
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 struct type* FUNC1 (struct type*,int) ; 
 scalar_t__ FUNC2 (struct type*) ; 
 int FUNC3 (struct type*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 

int
FUNC5 (struct type *base, struct type *dclass)
{
  int i;

  FUNC0 (base);
  FUNC0 (dclass);

  if (base == dclass)
    return 1;
  if (FUNC2 (base) && FUNC2 (dclass) &&
      !FUNC4 (FUNC2 (base), FUNC2 (dclass)))
    return 1;

  for (i = 0; i < FUNC3 (dclass); i++)
    if (FUNC5 (base, FUNC1 (dclass, i)))
      return 1;

  return 0;
}