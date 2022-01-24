#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  scalar_t__ rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_3__ {int sse_regno; int nregs; size_t regno; int float_in_sse; int mmx_regno; int words; int /*<<< orphan*/  mmx_nregs; int /*<<< orphan*/  warn_mmx; int /*<<< orphan*/  sse_nregs; int /*<<< orphan*/  warn_sse; int /*<<< orphan*/  fastcall; scalar_t__ maybe_vaarg; } ;
typedef  TYPE_1__ CUMULATIVE_ARGS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  BLKmode 145 
#define  DFmode 144 
#define  DImode 143 
 int FIRST_MMX_REG ; 
 int FIRST_SSE_REG ; 
 scalar_t__ FUNC1 (int) ; 
 char* FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
#define  HImode 142 
 scalar_t__ NULL_RTX ; 
#define  QImode 141 
#define  SFmode 140 
#define  SImode 139 
 int SSE_REGPARM_MAX ; 
 scalar_t__ TARGET_64BIT ; 
 scalar_t__ TARGET_DEBUG_ARG ; 
 int /*<<< orphan*/  TARGET_MMX ; 
 int /*<<< orphan*/  TARGET_SSE ; 
#define  TImode 138 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int UNITS_PER_WORD ; 
#define  V16QImode 137 
#define  V2DFmode 136 
#define  V2DImode 135 
#define  V2SFmode 134 
#define  V2SImode 133 
#define  V4HImode 132 
#define  V4SFmode 131 
#define  V4SImode 130 
#define  V8HImode 129 
#define  V8QImode 128 
 scalar_t__ VECTOR_TYPE ; 
 int VOIDmode ; 
 scalar_t__ constm1_rtx ; 
 scalar_t__ FUNC5 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC7 (int,int,int) ; 
 scalar_t__ FUNC8 (int,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * x86_64_int_parameter_registers ; 

rtx
FUNC13 (CUMULATIVE_ARGS *cum, enum machine_mode orig_mode,
	      tree type, int named)
{
  enum machine_mode mode = orig_mode;
  rtx ret = NULL_RTX;
  int bytes =
    (mode == BLKmode) ? FUNC9 (type) : (int) FUNC3 (mode);
  int words = (bytes + UNITS_PER_WORD - 1) / UNITS_PER_WORD;
  static bool warnedsse, warnedmmx;

  /* To simplify the code below, represent vector types with a vector mode
     even if MMX/SSE are not active.  */
  if (type && FUNC4 (type) == VECTOR_TYPE)
    mode = FUNC11 (type);

  /* Handle a hidden AL argument containing number of registers for varargs
     x86-64 functions.  For i386 ABI just return constm1_rtx to avoid
     any AL settings.  */
  if (mode == VOIDmode)
    {
      if (TARGET_64BIT)
	return FUNC1 (cum->maybe_vaarg
			? (cum->sse_nregs < 0
			   ? SSE_REGPARM_MAX
			   : cum->sse_regno)
			: -1);
      else
	return constm1_rtx;
    }
  if (TARGET_64BIT)
    ret = FUNC5 (mode, orig_mode, type, 0, cum->nregs,
			       cum->sse_nregs,
			       &x86_64_int_parameter_registers [cum->regno],
			       cum->sse_regno);
  else
    switch (mode)
      {
	/* For now, pass fp/complex values on the stack.  */
      default:
	break;

      case BLKmode:
	if (bytes < 0)
	  break;
	/* FALLTHRU */
      case DImode:
      case SImode:
      case HImode:
      case QImode:
	if (words <= cum->nregs)
	  {
	    int regno = cum->regno;

	    /* Fastcall allocates the first two DWORD (SImode) or
	       smaller arguments to ECX and EDX.  */
	    if (cum->fastcall)
	      {
	        if (mode == BLKmode || mode == DImode)
	          break;

	        /* ECX not EAX is the first allocated register.  */
	        if (regno == 0)
		  regno = 2;
	      }
	    ret = FUNC8 (mode, regno);
	  }
	break;
      case DFmode:
	if (cum->float_in_sse < 2)
	  break;
      case SFmode:
	if (cum->float_in_sse < 1)
	  break;
	/* FALLTHRU */
      case TImode:
      case V16QImode:
      case V8HImode:
      case V4SImode:
      case V2DImode:
      case V4SFmode:
      case V2DFmode:
	if (!type || !FUNC0 (type))
	  {
	    if (!TARGET_SSE && !warnedsse && cum->warn_sse)
	      {
		warnedsse = true;
		FUNC12 (0, "SSE vector argument without SSE enabled "
			 "changes the ABI");
	      }
	    if (cum->sse_nregs)
	      ret = FUNC7 (mode, orig_mode,
					 cum->sse_regno + FIRST_SSE_REG);
	  }
	break;
      case V8QImode:
      case V4HImode:
      case V2SImode:
      case V2SFmode:
	if (!type || !FUNC0 (type))
	  {
	    if (!TARGET_MMX && !warnedmmx && cum->warn_mmx)
	      {
		warnedmmx = true;
		FUNC12 (0, "MMX vector argument without MMX enabled "
			 "changes the ABI");
	      }
	    if (cum->mmx_nregs)
	      ret = FUNC7 (mode, orig_mode,
					 cum->mmx_regno + FIRST_MMX_REG);
	  }
	break;
      }

  if (TARGET_DEBUG_ARG)
    {
      FUNC6 (stderr,
	       "function_arg (size=%d, wds=%2d, nregs=%d, mode=%4s, named=%d, ",
	       words, cum->words, cum->nregs, FUNC2 (mode), named);

      if (ret)
	FUNC10 (stderr, ret);
      else
	FUNC6 (stderr, ", stack");

      FUNC6 (stderr, " )\n");
    }

  return ret;
}