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
typedef  int /*<<< orphan*/  valueT ;
typedef  int /*<<< orphan*/  symbolS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  flag_keep_locals ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  stdoutput ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  undefined_section ; 
 int /*<<< orphan*/  zero_address_frag ; 

symbolS *
FUNC6 (const char *name)
{
  register symbolS *symbolP;

  symbolP = FUNC3 (name);

  if (symbolP == NULL)
    {
      if (! flag_keep_locals && FUNC0 (stdoutput, name))
	{
	  symbolP = FUNC2 ((char *) name);
	  if (symbolP != NULL)
	    return symbolP;

	  symbolP = (symbolS *) FUNC1 (name, undefined_section,
						   (valueT) 0,
						   &zero_address_frag);
	  return symbolP;
	}

      symbolP = FUNC4 (name);

      FUNC5 (symbolP);
    }				/* if symbol wasn't found */

  return (symbolP);
}