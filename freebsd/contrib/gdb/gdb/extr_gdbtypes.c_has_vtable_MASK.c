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
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 scalar_t__ FUNC1 (struct type*) ; 
 scalar_t__ TYPE_CODE_CLASS ; 
 struct type* FUNC2 (struct type*,int) ; 
 scalar_t__ FUNC3 (struct type*) ; 
 int /*<<< orphan*/  FUNC4 (struct type*,int) ; 
 scalar_t__ FUNC5 (struct type*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct type*) ; 
 int FUNC8 (struct type*) ; 

int
FUNC9 (struct type *dclass)
{
  /* In the HP ANSI C++ runtime model, a class has a vtable only if it
     has virtual functions or virtual bases.  */

  int i;

  if (FUNC1 (dclass) != TYPE_CODE_CLASS)
    return 0;

  /* First check for the presence of virtual bases */
  if (FUNC3 (dclass))
    for (i = 0; i < FUNC8 (dclass); i++)
      if (FUNC0 (FUNC3 (dclass), i))
	return 1;

  /* Next check for virtual functions */
  if (FUNC5 (dclass))
    for (i = 0; i < FUNC7 (dclass); i++)
      if (FUNC6 (FUNC4 (dclass, i), 0))
	return 1;

  /* Recurse on non-virtual bases to see if any of them needs a vtable */
  if (FUNC3 (dclass))
    for (i = 0; i < FUNC8 (dclass); i++)
      if ((!FUNC0 (FUNC3 (dclass), i)) &&
	  (FUNC9 (FUNC2 (dclass, i))))
	return 1;

  /* Well, maybe we don't need a virtual table */
  return 0;
}