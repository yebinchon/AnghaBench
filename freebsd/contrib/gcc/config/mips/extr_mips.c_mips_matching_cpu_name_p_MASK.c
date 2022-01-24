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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const) ; 
 char FUNC1 (char const) ; 
 int FUNC2 (char const*,char const*) ; 

__attribute__((used)) static bool
FUNC3 (const char *canonical, const char *given)
{
  /* First see if the name matches exactly, or with a final "000"
     turned into "k".  */
  if (FUNC2 (canonical, given))
    return true;

  /* If not, try comparing based on numerical designation alone.
     See if GIVEN is an unadorned number, or 'r' followed by a number.  */
  if (FUNC1 (*given) == 'r')
    given++;
  if (!FUNC0 (*given))
    return false;

  /* Skip over some well-known prefixes in the canonical name,
     hoping to find a number there too.  */
  if (FUNC1 (canonical[0]) == 'v' && FUNC1 (canonical[1]) == 'r')
    canonical += 2;
  else if (FUNC1 (canonical[0]) == 'r' && FUNC1 (canonical[1]) == 'm')
    canonical += 2;
  else if (FUNC1 (canonical[0]) == 'r')
    canonical += 1;

  return FUNC2 (canonical, given);
}