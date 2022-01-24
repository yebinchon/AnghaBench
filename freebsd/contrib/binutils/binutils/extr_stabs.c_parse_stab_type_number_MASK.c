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
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bfd_boolean
FUNC2 (const char **pp, int *typenums)
{
  const char *orig;

  orig = *pp;

  if (**pp != '(')
    {
      typenums[0] = 0;
      typenums[1] = (int) FUNC1 (pp, (bfd_boolean *) NULL);
    }
  else
    {
      ++*pp;
      typenums[0] = (int) FUNC1 (pp, (bfd_boolean *) NULL);
      if (**pp != ',')
	{
	  FUNC0 (orig);
	  return FALSE;
	}
      ++*pp;
      typenums[1] = (int) FUNC1 (pp, (bfd_boolean *) NULL);
      if (**pp != ')')
	{
	  FUNC0 (orig);
	  return FALSE;
	}
      ++*pp;
    }

  return TRUE;
}