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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
#define  CONST_DOUBLE 133 
#define  CONST_INT 132 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (int) ; 
#define  LABEL_REF 131 
#define  REG 130 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
#define  SCRATCH 129 
#define  SYMBOL_REF 128 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int) ; 
 scalar_t__ FUNC8 (scalar_t__,int,int) ; 
 int FUNC9 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC13 (rtx x, rtx y)
{
  int i;
  int j;
  enum rtx_code code;
  const char *fmt;

  if (x == y)
    return 1;
  if (x == 0 || y == 0)
    return 0;

  code = FUNC0 (x);
  /* Rtx's of different codes cannot be equal.  */
  if (code != FUNC0 (y))
    return 0;

  /* (MULT:SI x y) and (MULT:HI x y) are NOT equivalent.
     (REG:SI x) and (REG:HI x) are NOT equivalent.  */

  if (FUNC1 (x) != FUNC1 (y))
    return 0;

  /* Some RTL can be compared nonrecursively.  */
  switch (code)
    {
    case REG:
      return (FUNC4 (x) == FUNC4 (y));

    case LABEL_REF:
      return FUNC5 (x, 0) == FUNC5 (y, 0);

    case SYMBOL_REF:
      return FUNC7 (x, 0) == FUNC7 (y, 0);

    case SCRATCH:
    case CONST_DOUBLE:
    case CONST_INT:
      return 0;

    default:
      break;
    }

  /* Compare the elements.  If any pair of corresponding elements
     fail to match, return 0 for the whole thing.  */

  fmt = FUNC2 (code);
  for (i = FUNC3 (code) - 1; i >= 0; i--)
    {
      switch (fmt[i])
	{
	case 'w':
	  if (FUNC10 (x, i) != FUNC10 (y, i))
	    return 0;
	  break;

	case 'n':
	case 'i':
	  if (FUNC6 (x, i) != FUNC6 (y, i))
	    return 0;
	  break;

	case 'V':
	case 'E':
	  /* Two vectors must have the same length.  */
	  if (FUNC9 (x, i) != FUNC9 (y, i))
	    return 0;

	  /* And the corresponding elements must match.  */
	  for (j = 0; j < FUNC9 (x, i); j++)
	    if (FUNC13 (FUNC8 (x, i, j), FUNC8 (y, i, j)) == 0)
	      return 0;
	  break;

	case 'e':
	  if (FUNC13 (FUNC5 (x, i), FUNC5 (y, i)) == 0)
	    return 0;
	  break;

	case 'S':
	case 's':
	  if ((FUNC7 (x, i) || FUNC7 (y, i))
	      && (! FUNC7 (x, i) || ! FUNC7 (y, i)
		  || FUNC12 (FUNC7 (x, i), FUNC7 (y, i))))
	    return 0;
	  break;

	case 'u':
	  /* These are just backpointers, so they don't matter.  */
	  break;

	case '0':
	case 't':
	  break;

	  /* It is believed that rtx's at this level will never
	     contain anything but integers and other rtx's,
	     except for within LABEL_REFs and SYMBOL_REFs.  */
	default:
	  FUNC11 ();
	}
    }
  return 1;
}