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
#define  CONST 132 
 int CONST_INT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  LABEL_REF 131 
 int PLUS ; 
#define  SYMBOL_REF 130 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int TARGET_64BIT ; 
 int /*<<< orphan*/  TLS_MODEL_LOCAL_EXEC ; 
 int UNSPEC ; 
#define  UNSPEC_GOTOFF 129 
#define  UNSPEC_TPOFF 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

bool
FUNC6 (rtx x)
{
  rtx inner;

  switch (FUNC0 (x))
    {
    case CONST:
      inner = FUNC2 (x, 0);
      if (FUNC0 (inner) == PLUS
	  && FUNC0 (FUNC2 (inner, 1)) == CONST_INT)
	inner = FUNC2 (inner, 0);

      /* Only some unspecs are valid as "constants".  */
      if (FUNC0 (inner) == UNSPEC)
	switch (FUNC3 (inner, 1))
	  {
	  case UNSPEC_GOTOFF:
	    return TARGET_64BIT;
	  case UNSPEC_TPOFF:
	    x = FUNC4 (inner, 0, 0);
	    return (FUNC0 (x) == SYMBOL_REF
		    && FUNC1 (x) == TLS_MODEL_LOCAL_EXEC);
	  default:
	    return false;
	  }
      /* FALLTHRU */

    case SYMBOL_REF:
    case LABEL_REF:
      return FUNC5 (x);

    default:
      return true;
    }
}