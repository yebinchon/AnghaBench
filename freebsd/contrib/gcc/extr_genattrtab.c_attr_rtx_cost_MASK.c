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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
#define  EQ_ATTR 130 
#define  EQ_ATTR_ALT 129 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
#define  MATCH_OPERAND 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  alternative_name ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8 (rtx x)
{
  int cost = 0;
  enum rtx_code code;
  if (!x)
    return 0;
  code = FUNC0 (x);
  switch (code)
    {
    case MATCH_OPERAND:
      if (FUNC4 (x, 1)[0])
	return 10;
      else
	return 0;

    case EQ_ATTR_ALT:
      return 0;

    case EQ_ATTR:
      /* Alternatives don't result into function call.  */
      if (!FUNC7 (FUNC4 (x, 0), alternative_name))
	return 0;
      else
	return 5;
    default:
      {
	int i, j;
	const char *fmt = FUNC1 (code);
	for (i = FUNC2 (code) - 1; i >= 0; i--)
	  {
	    switch (fmt[i])
	      {
	      case 'V':
	      case 'E':
		for (j = 0; j < FUNC6 (x, i); j++)
		  cost += FUNC8 (FUNC5 (x, i, j));
		break;
	      case 'e':
		cost += FUNC8 (FUNC3 (x, i));
		break;
	      }
	  }
      }
      break;
    }
  return cost;
}