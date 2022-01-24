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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (char const**) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static void
FUNC6 (rtx exp)
{
  const char *codes = FUNC1 (exp, 0);
  const char *path = FUNC1 (exp, 1);
  const char *code;

  FUNC2 ("  switch (GET_CODE (", stdout);
  FUNC5 (path);
  FUNC2 ("))\n    {\n", stdout);

  while ((code = FUNC4 (&codes)) != 0)
    {
      FUNC2 ("    case ", stdout);
      while (code < codes)
	{
	  FUNC3 (FUNC0 (*code));
	  code++;
	}
      FUNC2(":\n", stdout);
    }
}