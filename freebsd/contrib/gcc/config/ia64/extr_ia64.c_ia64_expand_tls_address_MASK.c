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
typedef  enum tls_model { ____Placeholder_tls_model } tls_model ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCT_CONST ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  OPTAB_DIRECT ; 
 int /*<<< orphan*/  PLUS ; 
 scalar_t__ Pmode ; 
 int /*<<< orphan*/  TARGET_TLS64 ; 
#define  TLS_MODEL_GLOBAL_DYNAMIC 131 
#define  TLS_MODEL_INITIAL_EXEC 130 
#define  TLS_MODEL_LOCAL_DYNAMIC 129 
#define  TLS_MODEL_LOCAL_EXEC 128 
 int /*<<< orphan*/  UNSPEC_LD_BASE ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 () ; 

__attribute__((used)) static rtx
FUNC24 (enum tls_model tls_kind, rtx op0, rtx op1,
			 rtx orig_op1, HOST_WIDE_INT addend)
{
  rtx tga_op1, tga_op2, tga_ret, tga_eqv, tmp, insns;
  rtx orig_op0 = op0;
  HOST_WIDE_INT addend_lo, addend_hi;

  switch (tls_kind)
    {
    case TLS_MODEL_GLOBAL_DYNAMIC:
      FUNC23 ();

      tga_op1 = FUNC15 (Pmode);
      FUNC2 (FUNC11 (tga_op1, op1));

      tga_op2 = FUNC15 (Pmode);
      FUNC2 (FUNC12 (tga_op2, op1));

      tga_ret = FUNC4 (FUNC19 (), NULL_RTX,
					 LCT_CONST, Pmode, 2, tga_op1,
					 Pmode, tga_op2, Pmode);

      insns = FUNC20 ();
      FUNC5 ();

      if (FUNC1 (op0) != Pmode)
	op0 = tga_ret;
      FUNC3 (insns, op0, tga_ret, op1);
      break;

    case TLS_MODEL_LOCAL_DYNAMIC:
      /* ??? This isn't the completely proper way to do local-dynamic
	 If the call to __tls_get_addr is used only by a single symbol,
	 then we should (somehow) move the dtprel to the second arg
	 to avoid the extra add.  */
      FUNC23 ();

      tga_op1 = FUNC15 (Pmode);
      FUNC2 (FUNC11 (tga_op1, op1));

      tga_op2 = const0_rtx;

      tga_ret = FUNC4 (FUNC19 (), NULL_RTX,
					 LCT_CONST, Pmode, 2, tga_op1,
					 Pmode, tga_op2, Pmode);

      insns = FUNC20 ();
      FUNC5 ();

      tga_eqv = FUNC17 (Pmode, FUNC16 (1, const0_rtx),
				UNSPEC_LD_BASE);
      tmp = FUNC15 (Pmode);
      FUNC3 (insns, tmp, tga_ret, tga_eqv);

      if (!FUNC22 (op0, Pmode))
	op0 = FUNC15 (Pmode);
      if (TARGET_TLS64)
	{
	  FUNC2 (FUNC12 (op0, op1));
	  FUNC2 (FUNC10 (op0, tmp, op0));
	}
      else
	FUNC2 (FUNC8 (op0, op1, tmp));
      break;

    case TLS_MODEL_INITIAL_EXEC:
      addend_lo = ((addend & 0x3fff) ^ 0x2000) - 0x2000;
      addend_hi = addend - addend_lo;

      op1 = FUNC21 (op1, addend_hi);
      addend = addend_lo;

      tmp = FUNC15 (Pmode);
      FUNC2 (FUNC13 (tmp, op1));

      if (!FUNC22 (op0, Pmode))
	op0 = FUNC15 (Pmode);
      FUNC2 (FUNC10 (op0, tmp, FUNC18 ()));
      break;

    case TLS_MODEL_LOCAL_EXEC:
      if (!FUNC22 (op0, Pmode))
	op0 = FUNC15 (Pmode);

      op1 = orig_op1;
      addend = 0;
      if (TARGET_TLS64)
	{
	  FUNC2 (FUNC13 (op0, op1));
	  FUNC2 (FUNC10 (op0, op0, FUNC18 ()));
	}
      else
	FUNC2 (FUNC9 (op0, op1, FUNC18 ()));
      break;

    default:
      FUNC7 ();
    }

  if (addend)
    op0 = FUNC6 (Pmode, PLUS, op0, FUNC0 (addend),
			       orig_op0, 1, OPTAB_DIRECT);
  if (orig_op0 == op0)
    return NULL_RTX;
  if (FUNC1 (orig_op0) == Pmode)
    return op0;
  return FUNC14 (FUNC1 (orig_op0), op0);
}