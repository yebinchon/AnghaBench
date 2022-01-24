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
 int /*<<< orphan*/  FUNC0 (struct type*,int) ; 
 int FUNC1 (struct type*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct type*) ; 
 struct type* FUNC4 (struct type*) ; 

int
FUNC5 (struct type *dclass)
{
  int fn, oi;			/* function and overloaded instance indices */
  int vfuncs;			/* count to return */

  /* recurse on bases that can share virtual table */
  struct type *pbc = FUNC4 (dclass);
  if (pbc)
    vfuncs = FUNC5 (pbc);
  else
    vfuncs = 0;

  for (fn = 0; fn < FUNC3 (dclass); fn++)
    for (oi = 0; oi < FUNC1 (dclass, fn); oi++)
      if (FUNC2 (FUNC0 (dclass, fn), oi))
	vfuncs++;

  return vfuncs;
}