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
#define  CONST 137 
 int const CONST_INT ; 
 int const FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  LABEL_REF 136 
 int const PLUS ; 
 int /*<<< orphan*/  Pmode ; 
#define  SYMBOL_REF 135 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ TARGET_64BIT ; 
 scalar_t__ TARGET_MACHO ; 
 int /*<<< orphan*/  TLS_MODEL_INITIAL_EXEC ; 
 int /*<<< orphan*/  TLS_MODEL_LOCAL_DYNAMIC ; 
 int /*<<< orphan*/  TLS_MODEL_LOCAL_EXEC ; 
 int const UNSPEC ; 
#define  UNSPEC_DTPOFF 134 
#define  UNSPEC_GOT 133 
#define  UNSPEC_GOTNTPOFF 132 
#define  UNSPEC_GOTOFF 131 
 int UNSPEC_GOTPCREL ; 
#define  UNSPEC_GOTTPOFF 130 
#define  UNSPEC_INDNTPOFF 129 
#define  UNSPEC_NTPOFF 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC10 (rtx disp)
{
  bool saw_plus;

  /* In 64bit mode we can allow direct addresses of symbols and labels
     when they are not dynamic symbols.  */
  if (TARGET_64BIT)
    {
      rtx op0 = disp, op1;

      switch (FUNC0 (disp))
	{
	case LABEL_REF:
	  return true;

	case CONST:
	  if (FUNC0 (FUNC5 (disp, 0)) != PLUS)
	    break;
	  op0 = FUNC5 (FUNC5 (disp, 0), 0);
	  op1 = FUNC5 (FUNC5 (disp, 0), 1);
	  if (FUNC0 (op1) != CONST_INT
	      || FUNC1 (op1) >= 16*1024*1024
	      || FUNC1 (op1) < -16*1024*1024)
            break;
	  if (FUNC0 (op0) == LABEL_REF)
	    return true;
	  if (FUNC0 (op0) != SYMBOL_REF)
	    break;
	  /* FALLTHRU */

	case SYMBOL_REF:
	  /* TLS references should always be enclosed in UNSPEC.  */
	  if (FUNC4 (op0))
	    return false;
	  if (!FUNC2 (op0) && FUNC3 (op0))
	    return true;
	  break;

	default:
	  break;
	}
    }
  if (FUNC0 (disp) != CONST)
    return 0;
  disp = FUNC5 (disp, 0);

  if (TARGET_64BIT)
    {
      /* We are unsafe to allow PLUS expressions.  This limit allowed distance
         of GOT tables.  We should not need these anyway.  */
      if (FUNC0 (disp) != UNSPEC
	  || (FUNC6 (disp, 1) != UNSPEC_GOTPCREL
	      && FUNC6 (disp, 1) != UNSPEC_GOTOFF))
	return 0;

      if (FUNC0 (FUNC7 (disp, 0, 0)) != SYMBOL_REF
	  && FUNC0 (FUNC7 (disp, 0, 0)) != LABEL_REF)
	return 0;
      return 1;
    }

  saw_plus = false;
  if (FUNC0 (disp) == PLUS)
    {
      if (FUNC0 (FUNC5 (disp, 1)) != CONST_INT)
	return 0;
      disp = FUNC5 (disp, 0);
      saw_plus = true;
    }

  if (TARGET_MACHO && FUNC8 (disp))
    return 1;

  if (FUNC0 (disp) != UNSPEC)
    return 0;

  switch (FUNC6 (disp, 1))
    {
    case UNSPEC_GOT:
      if (saw_plus)
	return false;
      return FUNC0 (FUNC7 (disp, 0, 0)) == SYMBOL_REF;
    case UNSPEC_GOTOFF:
      /* Refuse GOTOFF in 64bit mode since it is always 64bit when used.
	 While ABI specify also 32bit relocation but we don't produce it in
	 small PIC model at all.  */
      if ((FUNC0 (FUNC7 (disp, 0, 0)) == SYMBOL_REF
	   || FUNC0 (FUNC7 (disp, 0, 0)) == LABEL_REF)
	  && !TARGET_64BIT)
        return FUNC9 (FUNC7 (disp, 0, 0), Pmode);
      return false;
    case UNSPEC_GOTTPOFF:
    case UNSPEC_GOTNTPOFF:
    case UNSPEC_INDNTPOFF:
      if (saw_plus)
	return false;
      disp = FUNC7 (disp, 0, 0);
      return (FUNC0 (disp) == SYMBOL_REF
	      && FUNC4 (disp) == TLS_MODEL_INITIAL_EXEC);
    case UNSPEC_NTPOFF:
      disp = FUNC7 (disp, 0, 0);
      return (FUNC0 (disp) == SYMBOL_REF
	      && FUNC4 (disp) == TLS_MODEL_LOCAL_EXEC);
    case UNSPEC_DTPOFF:
      disp = FUNC7 (disp, 0, 0);
      return (FUNC0 (disp) == SYMBOL_REF
	      && FUNC4 (disp) == TLS_MODEL_LOCAL_DYNAMIC);
    }

  return 0;
}