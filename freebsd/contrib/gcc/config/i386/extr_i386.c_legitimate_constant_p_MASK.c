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
#define  CONST 135 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  CONST_DOUBLE 134 
 int CONST_INT ; 
#define  CONST_VECTOR 133 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int LABEL_REF ; 
 int PLUS ; 
#define  SYMBOL_REF 132 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int TARGET_64BIT ; 
 int /*<<< orphan*/  TARGET_MACHO ; 
 int /*<<< orphan*/  TImode ; 
 int /*<<< orphan*/  TLS_MODEL_LOCAL_DYNAMIC ; 
 int /*<<< orphan*/  TLS_MODEL_LOCAL_EXEC ; 
 int UNSPEC ; 
#define  UNSPEC_DTPOFF 131 
#define  UNSPEC_GOTOFF 130 
#define  UNSPEC_NTPOFF 129 
#define  UNSPEC_TPOFF 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

bool
FUNC8 (rtx x)
{
  switch (FUNC1 (x))
    {
    case CONST:
      x = FUNC4 (x, 0);

      if (FUNC1 (x) == PLUS)
	{
	  if (FUNC1 (FUNC4 (x, 1)) != CONST_INT)
	    return false;
	  x = FUNC4 (x, 0);
	}

      if (TARGET_MACHO && FUNC7 (x))
	return true;

      /* Only some unspecs are valid as "constants".  */
      if (FUNC1 (x) == UNSPEC)
	switch (FUNC5 (x, 1))
	  {
	  case UNSPEC_GOTOFF:
	    return TARGET_64BIT;
	  case UNSPEC_TPOFF:
	  case UNSPEC_NTPOFF:
	    x = FUNC6 (x, 0, 0);
	    return (FUNC1 (x) == SYMBOL_REF
		    && FUNC3 (x) == TLS_MODEL_LOCAL_EXEC);
	  case UNSPEC_DTPOFF:
	    x = FUNC6 (x, 0, 0);
	    return (FUNC1 (x) == SYMBOL_REF
		    && FUNC3 (x) == TLS_MODEL_LOCAL_DYNAMIC);
	  default:
	    return false;
	  }

      /* We must have drilled down to a symbol.  */
      if (FUNC1 (x) == LABEL_REF)
	return true;
      if (FUNC1 (x) != SYMBOL_REF)
	return false;
      /* FALLTHRU */

    case SYMBOL_REF:
      /* TLS symbols are never valid.  */
      if (FUNC3 (x))
	return false;
      break;

    case CONST_DOUBLE:
      if (FUNC2 (x) == TImode
	  && x != FUNC0 (TImode)
          && !TARGET_64BIT)
	return false;
      break;

    case CONST_VECTOR:
      if (x == FUNC0 (FUNC2 (x)))
	return true;
      return false;

    default:
      break;
    }

  /* Otherwise we handle everything else in the move patterns.  */
  return true;
}