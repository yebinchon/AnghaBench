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
typedef  int /*<<< orphan*/  tree ;
typedef  scalar_t__ t ;
typedef  int /*<<< orphan*/  c_pretty_printer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,unsigned int) ; 

void
FUNC6 (c_pretty_printer *pp, tree t)
{
  const char *name;

  FUNC3 (FUNC1 (t));

  if (FUNC0 (t))
    name = FUNC2 (FUNC0 (t));
  else
    {
      static char xname[8];
      FUNC5 (xname, "<U%4x>", ((unsigned)((unsigned long)(t) & 0xffff)));
      name = xname;
    }

  FUNC4 (pp, name);
}