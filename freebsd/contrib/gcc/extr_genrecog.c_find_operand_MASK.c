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
typedef  scalar_t__ rtx ;
typedef  scalar_t__ RTX_CODE ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 char* FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ MATCH_OPERAND ; 
 scalar_t__ MATCH_OPERATOR ; 
 scalar_t__ MATCH_PARALLEL ; 
 scalar_t__ MATCH_SCRATCH ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 scalar_t__ FUNC6 (scalar_t__,int,int) ; 
 int FUNC7 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static rtx
FUNC9 (rtx pattern, int n, rtx stop)
{
  const char *fmt;
  RTX_CODE code;
  int i, j, len;
  rtx r;

  if (pattern == stop)
    return stop;

  code = FUNC0 (pattern);
  if ((code == MATCH_SCRATCH
       || code == MATCH_OPERAND
       || code == MATCH_OPERATOR
       || code == MATCH_PARALLEL)
      && FUNC4 (pattern, 0) == n)
    return pattern;

  fmt = FUNC1 (code);
  len = FUNC2 (code);
  for (i = 0; i < len; i++)
    {
      switch (fmt[i])
	{
	case 'e': case 'u':
	  if ((r = FUNC9 (FUNC3 (pattern, i), n, stop)) != NULL_RTX)
	    return r;
	  break;

	case 'V':
	  if (! FUNC5 (pattern, i))
	    break;
	  /* Fall through.  */

	case 'E':
	  for (j = 0; j < FUNC7 (pattern, i); j++)
	    if ((r = FUNC9 (FUNC6 (pattern, i, j), n, stop))
		!= NULL_RTX)
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