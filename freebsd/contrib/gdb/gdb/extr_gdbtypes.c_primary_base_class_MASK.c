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
 struct type* FUNC1 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct type*,int) ; 
 int FUNC3 (struct type*) ; 
 scalar_t__ FUNC4 (struct type*) ; 

struct type *
FUNC5 (struct type *dclass)
{
  /* In HP ANSI C++'s runtime model, a "primary base class" of a class
     is the first directly inherited, non-virtual base class that
     requires a virtual table */

  int i;

  if (FUNC0 (dclass) != TYPE_CODE_CLASS)
    return NULL;

  for (i = 0; i < FUNC3 (dclass); i++)
    if (!FUNC2 (dclass, i) &&
	FUNC4 (FUNC1 (dclass, i)))
      return FUNC1 (dclass, i);

  return NULL;
}