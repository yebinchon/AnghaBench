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
typedef  int /*<<< orphan*/  HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int MINUS ; 
 int PLUS ; 
#define  POST_DEC 133 
#define  POST_INC 132 
#define  POST_MODIFY 131 
#define  PRE_DEC 130 
#define  PRE_INC 129 
#define  PRE_MODIFY 128 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ stack_pointer_rtx ; 

__attribute__((used)) static void
FUNC9 (rtx pattern, HOST_WIDE_INT *pre,
			      HOST_WIDE_INT *post)
{
  rtx src = FUNC6 (pattern);
  rtx dest = FUNC5 (pattern);
  enum rtx_code code;

  if (dest == stack_pointer_rtx)
    {
      /* (set (reg sp) (plus (reg sp) (const_int))) */
      code = FUNC0 (src);
      if (! (code == PLUS || code == MINUS)
	  || FUNC7 (src, 0) != stack_pointer_rtx
	  || FUNC0 (FUNC7 (src, 1)) != CONST_INT)
	return;

      if (code == MINUS)
	*post += FUNC3 (FUNC7 (src, 1));
      else
	*post -= FUNC3 (FUNC7 (src, 1));
    }
  else if (FUNC4 (dest))
    {
      /* (set (mem (pre_dec (reg sp))) (foo)) */
      src = FUNC7 (dest, 0);
      code = FUNC0 (src);

      switch (code)
	{
	case PRE_MODIFY:
	case POST_MODIFY:
	  if (FUNC7 (src, 0) == stack_pointer_rtx)
	    {
	      rtx val = FUNC7 (FUNC7 (src, 1), 1);
	      /* We handle only adjustments by constant amount.  */
	      FUNC8 (FUNC0 (FUNC7 (src, 1)) == PLUS &&
			  FUNC0 (val) == CONST_INT);
	      
	      if (code == PRE_MODIFY)
		*pre -= FUNC3 (val);
	      else
		*post -= FUNC3 (val);
	      break;
	    }
	  return;

	case PRE_DEC:
	  if (FUNC7 (src, 0) == stack_pointer_rtx)
	    {
	      *pre += FUNC2 (FUNC1 (dest));
	      break;
	    }
	  return;

	case POST_DEC:
	  if (FUNC7 (src, 0) == stack_pointer_rtx)
	    {
	      *post += FUNC2 (FUNC1 (dest));
	      break;
	    }
	  return;

	case PRE_INC:
	  if (FUNC7 (src, 0) == stack_pointer_rtx)
	    {
	      *pre -= FUNC2 (FUNC1 (dest));
	      break;
	    }
	  return;

	case POST_INC:
	  if (FUNC7 (src, 0) == stack_pointer_rtx)
	    {
	      *post -= FUNC2 (FUNC1 (dest));
	      break;
	    }
	  return;

	default:
	  return;
	}
    }
}