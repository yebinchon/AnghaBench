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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (int) ; 
#define  MATCH_OPERAND 131 
#define  MATCH_OPERATOR 130 
#define  MATCH_PARALLEL 129 
#define  MATCH_SCRATCH 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11 (rtx pattern, int *palt, int *pmax)
{
  const char *fmt;
  enum rtx_code code;
  int i, j, len;

  code = FUNC0 (pattern);
  switch (code)
    {
    case MATCH_OPERAND:
      i = FUNC10 (FUNC5 (pattern, 2));
      *palt = (i > *palt ? i : *palt);
      /* Fall through.  */

    case MATCH_OPERATOR:
    case MATCH_SCRATCH:
    case MATCH_PARALLEL:
      i = FUNC4 (pattern, 0);
      if (i > *pmax)
	*pmax = i;
      break;

    default:
      break;
    }

  fmt = FUNC1 (code);
  len = FUNC2 (code);
  for (i = 0; i < len; i++)
    {
      switch (fmt[i])
	{
	case 'e': case 'u':
	  FUNC11 (FUNC3 (pattern, i), palt, pmax);
	  break;

	case 'V':
	  if (FUNC6 (pattern, i) == NULL)
	    break;
	  /* Fall through.  */
	case 'E':
	  for (j = FUNC8 (pattern, i) - 1; j >= 0; --j)
	    FUNC11 (FUNC7 (pattern, i, j), palt, pmax);
	  break;

	case 'i': case 'w': case '0': case 's': case 'S': case 'T':
	  break;

	default:
	  FUNC9 ();
	}
    }
}