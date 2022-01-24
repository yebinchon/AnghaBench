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
#define  AND 131 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  IOR 130 
#define  MATCH_CODE 129 
#define  NOT 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (rtx exp)
{
  switch (FUNC0 (exp))
    {
    case MATCH_CODE:
      if (FUNC3 (exp))
	{
	  FUNC5 (exp);
	  FUNC4 ("      return true;\n"
		"    default:\n"
		"      break;\n"
		"    }\n"
		"  return false;");
	  return;
	}
      break;

    case AND:
      if (FUNC3 (FUNC1 (exp, 0)))
	{
	  FUNC5 (FUNC1 (exp, 0));
	  FUNC4 ("      break;\n"
		"    default:\n"
		"      return false;\n"
		"    }");
	  exp = FUNC1 (exp, 1);
	}
      break;

    case IOR:
      if (FUNC3 (FUNC1 (exp, 0)))
	{
	  FUNC5 (FUNC1 (exp, 0));
	  FUNC4 ("      return true;\n"
		"    default:\n"
		"      break;\n"
		"    }");
	  exp = FUNC1 (exp, 1);
	}
      break;

    case NOT:
      if (FUNC3 (FUNC1 (exp, 0)))
	{
	  FUNC5 (FUNC1 (exp, 0));
	  FUNC4 ("      return false;\n"
		"    default:\n"
		"      break;\n"
		"    }\n"
		"  return true;");
	  return;
	}
      break;

    default:
      break;
    }

  FUNC2("  return ",stdout);
  FUNC6 (exp);
  FUNC2(";\n", stdout);
}