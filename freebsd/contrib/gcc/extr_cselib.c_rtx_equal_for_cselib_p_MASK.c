#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct elt_loc_list {scalar_t__ loc; struct elt_loc_list* next; } ;
typedef  scalar_t__ rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
struct TYPE_6__ {scalar_t__ val_rtx; } ;
struct TYPE_7__ {struct elt_loc_list* locs; TYPE_1__ u; } ;
typedef  TYPE_2__ cselib_val ;
struct TYPE_8__ {int /*<<< orphan*/  (* commutative_p ) (scalar_t__,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
#define  CONST_DOUBLE 129 
 TYPE_2__* FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 char* FUNC3 (int) ; 
 int FUNC4 (int) ; 
#define  LABEL_REF 128 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  UNKNOWN ; 
 int VALUE ; 
 scalar_t__ FUNC7 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int) ; 
 scalar_t__ FUNC10 (scalar_t__,int,int) ; 
 int FUNC11 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int) ; 
 TYPE_2__* FUNC13 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_3__ targetm ; 

int
FUNC17 (rtx x, rtx y)
{
  enum rtx_code code;
  const char *fmt;
  int i;

  if (FUNC6 (x) || FUNC5 (x))
    {
      cselib_val *e = FUNC13 (x, FUNC2 (x), 0);

      if (e)
	x = e->u.val_rtx;
    }

  if (FUNC6 (y) || FUNC5 (y))
    {
      cselib_val *e = FUNC13 (y, FUNC2 (y), 0);

      if (e)
	y = e->u.val_rtx;
    }

  if (x == y)
    return 1;

  if (FUNC1 (x) == VALUE && FUNC1 (y) == VALUE)
    return FUNC0 (x) == FUNC0 (y);

  if (FUNC1 (x) == VALUE)
    {
      cselib_val *e = FUNC0 (x);
      struct elt_loc_list *l;

      for (l = e->locs; l; l = l->next)
	{
	  rtx t = l->loc;

	  /* Avoid infinite recursion.  */
	  if (FUNC6 (t) || FUNC5 (t))
	    continue;
	  else if (FUNC17 (t, y))
	    return 1;
	}

      return 0;
    }

  if (FUNC1 (y) == VALUE)
    {
      cselib_val *e = FUNC0 (y);
      struct elt_loc_list *l;

      for (l = e->locs; l; l = l->next)
	{
	  rtx t = l->loc;

	  if (FUNC6 (t) || FUNC5 (t))
	    continue;
	  else if (FUNC17 (x, t))
	    return 1;
	}

      return 0;
    }

  if (FUNC1 (x) != FUNC1 (y) || FUNC2 (x) != FUNC2 (y))
    return 0;

  /* These won't be handled correctly by the code below.  */
  switch (FUNC1 (x))
    {
    case CONST_DOUBLE:
      return 0;

    case LABEL_REF:
      return FUNC7 (x, 0) == FUNC7 (y, 0);

    default:
      break;
    }

  code = FUNC1 (x);
  fmt = FUNC3 (code);

  for (i = FUNC4 (code) - 1; i >= 0; i--)
    {
      int j;

      switch (fmt[i])
	{
	case 'w':
	  if (FUNC12 (x, i) != FUNC12 (y, i))
	    return 0;
	  break;

	case 'n':
	case 'i':
	  if (FUNC8 (x, i) != FUNC8 (y, i))
	    return 0;
	  break;

	case 'V':
	case 'E':
	  /* Two vectors must have the same length.  */
	  if (FUNC11 (x, i) != FUNC11 (y, i))
	    return 0;

	  /* And the corresponding elements must match.  */
	  for (j = 0; j < FUNC11 (x, i); j++)
	    if (! FUNC17 (FUNC10 (x, i, j),
					  FUNC10 (y, i, j)))
	      return 0;
	  break;

	case 'e':
	  if (i == 1
	      && targetm.commutative_p (x, UNKNOWN)
	      && FUNC17 (FUNC7 (x, 1), FUNC7 (y, 0))
	      && FUNC17 (FUNC7 (x, 0), FUNC7 (y, 1)))
	    return 1;
	  if (! FUNC17 (FUNC7 (x, i), FUNC7 (y, i)))
	    return 0;
	  break;

	case 'S':
	case 's':
	  if (FUNC15 (FUNC9 (x, i), FUNC9 (y, i)))
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
	  FUNC14 ();
	}
    }
  return 1;
}