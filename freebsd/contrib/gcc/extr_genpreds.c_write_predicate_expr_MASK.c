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
#define  AND 134 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
#define  IF_THEN_ELSE 133 
#define  IOR 132 
#define  MATCH_CODE 131 
#define  MATCH_OPERAND 130 
#define  MATCH_TEST 129 
#define  NOT 128 
 size_t VOIDmode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 char** mode_name ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

__attribute__((used)) static void
FUNC10 (rtx exp)
{
  switch (FUNC0 (exp))
    {
    case AND:
      FUNC8 ('(');
      FUNC10 (FUNC2 (exp, 0));
      FUNC4 (") && (", stdout);
      FUNC10 (FUNC2 (exp, 1));
      FUNC8 (')');
      break;
  
    case IOR:
      FUNC8 ('(');
      FUNC10 (FUNC2 (exp, 0));
      FUNC4 (") || (", stdout);
      FUNC10 (FUNC2 (exp, 1));
      FUNC8 (')');
      break;

    case NOT:
      FUNC4 ("!(", stdout);
      FUNC10 (FUNC2 (exp, 0));
      FUNC8 (')');
      break;

    case IF_THEN_ELSE:
      FUNC8 ('(');
      FUNC10 (FUNC2 (exp, 0));
      FUNC4 (") ? (", stdout);
      FUNC10 (FUNC2 (exp, 1));
      FUNC4 (") : (", stdout);
      FUNC10 (FUNC2 (exp, 2));
      FUNC8 (')');
      break;

    case MATCH_OPERAND:
      if (FUNC1 (exp) == VOIDmode)
        FUNC7 ("%s (op, mode)", FUNC3 (exp, 1));
      else
        FUNC7 ("%s (op, %smode)", FUNC3 (exp, 1), mode_name[FUNC1 (exp)]);
      break;

    case MATCH_CODE:
      FUNC9 (FUNC3 (exp, 1), FUNC3 (exp, 0));
      break;

    case MATCH_TEST:
      FUNC6 (FUNC3 (exp, 0));
      break;

    default:
      FUNC5 ();
    }
}