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
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ obfd ; 
 char* program_name ; 
 int /*<<< orphan*/  real_name ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8 (void)
{
  if (!obfd)
    {
      FUNC3 (stderr, FUNC0("%s: no open output archive\n"), program_name);
      FUNC5 ();
    }
  else
    {
      char *ofilename = FUNC7 (FUNC2 (obfd));

      FUNC1 (obfd);

      FUNC6 (ofilename, real_name, 0);
      obfd = 0;
      FUNC4 (ofilename);
    }
}