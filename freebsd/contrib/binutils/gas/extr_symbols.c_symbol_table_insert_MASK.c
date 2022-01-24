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
typedef  int /*<<< orphan*/  PTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  local_hash ; 
 int /*<<< orphan*/  sy_hash ; 

void
FUNC6 (symbolS *symbolP)
{
  register const char *error_string;

  FUNC5 (symbolP);
  FUNC5 (FUNC1 (symbolP));

  if (FUNC0 (symbolP))
    {
      error_string = FUNC4 (local_hash, FUNC1 (symbolP),
			       (PTR) symbolP);
      if (error_string != NULL)
	FUNC3 (FUNC2("inserting \"%s\" into symbol table failed: %s"),
		  FUNC1 (symbolP), error_string);
      return;
    }

  if ((error_string = FUNC4 (sy_hash, FUNC1 (symbolP), (PTR) symbolP)))
    {
      FUNC3 (FUNC2("inserting \"%s\" into symbol table failed: %s"),
		FUNC1 (symbolP), error_string);
    }				/* on error  */
}