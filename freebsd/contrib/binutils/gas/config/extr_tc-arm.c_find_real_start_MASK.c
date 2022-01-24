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
typedef  int /*<<< orphan*/  symbolS ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STUB_NAME ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 

__attribute__((used)) static symbolS *
FUNC6 (symbolS * symbolP)
{
  char *       real_start;
  const char * name = FUNC1 (symbolP);
  symbolS *    new_target;

  /* This definition must agree with the one in gcc/config/arm/thumb.c.	 */
#define STUB_NAME ".real_start_of"

  if (name == NULL)
    FUNC3 ();

  /* The compiler may generate BL instructions to local labels because
     it needs to perform a branch to a far away location. These labels
     do not have a corresponding ".real_start_of" label.  We check
     both for S_IS_LOCAL and for a leading dot, to give a way to bypass
     the ".real_start_of" convention for nonlocal branches.  */
  if (FUNC2 (symbolP) || name[0] == '.')
    return symbolP;

  real_start = FUNC0 ((STUB_NAME, name, NULL));
  new_target = FUNC5 (real_start);

  if (new_target == NULL)
    {
      FUNC4 ("Failed to find real start of function: %s\n", name);
      new_target = symbolP;
    }

  return new_target;
}