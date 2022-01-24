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
typedef  int /*<<< orphan*/ * rtx ;
typedef  scalar_t__ RTX_CODE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ MATCH_OPERAND ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 int* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static rtx
FUNC9 (rtx pattern, int n)
{
  const char *fmt;
  RTX_CODE code;
  int i, j, len;
  rtx r;

  code = FUNC0 (pattern);
  if (code == MATCH_OPERAND
      && (FUNC4 (pattern, 2)[0] == '0' + n
	  || (FUNC4 (pattern, 2)[0] == '%'
	      && FUNC4 (pattern, 2)[1] == '0' + n)))
    return pattern;

  fmt = FUNC1 (code);
  len = FUNC2 (code);
  for (i = 0; i < len; i++)
    {
      switch (fmt[i])
	{
	case 'e': case 'u':
	  if ((r = FUNC9 (FUNC3 (pattern, i), n)))
	    return r;
	  break;

	case 'V':
	  if (! FUNC5 (pattern, i))
	    break;
	  /* Fall through.  */

	case 'E':
	  for (j = 0; j < FUNC7 (pattern, i); j++)
	    if ((r = FUNC9 (FUNC6 (pattern, i, j), n)))
	      return r;
	  break;

	case 'i': case 'w': case '0': case 's':
	  break;

	default:
	  FUNC8 ();
	}
    }

  return NULL;
}