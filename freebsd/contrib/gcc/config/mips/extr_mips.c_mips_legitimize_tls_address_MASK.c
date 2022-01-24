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

/* Variables and functions */
 int /*<<< orphan*/  DImode ; 
 scalar_t__ GP_RETURN ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  SYMBOL_DTPREL ; 
 int /*<<< orphan*/  SYMBOL_GOTTPREL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYMBOL_TLSGD ; 
 int /*<<< orphan*/  SYMBOL_TLSLDM ; 
 int /*<<< orphan*/  SYMBOL_TPREL ; 
 int /*<<< orphan*/  TARGET_ABICALLS ; 
#define  TLS_MODEL_GLOBAL_DYNAMIC 131 
#define  TLS_MODEL_INITIAL_EXEC 130 
#define  TLS_MODEL_LOCAL_DYNAMIC 129 
#define  TLS_MODEL_LOCAL_EXEC 128 
 int /*<<< orphan*/  UNSPEC_TLS_LDM ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pic_offset_table_rtx ; 

__attribute__((used)) static rtx
FUNC17 (rtx loc)
{
  rtx dest, insn, v0, v1, tmp1, tmp2, eqv;
  enum tls_model model;

  v0 = FUNC10 (Pmode, GP_RETURN);
  v1 = FUNC10 (Pmode, GP_RETURN + 1);

  model = FUNC0 (loc);
  /* Only TARGET_ABICALLS code can have more than one module; other
     code must be be static and should not use a GOT.  All TLS models
     reduce to local exec in this situation.  */
  if (!TARGET_ABICALLS)
    model = TLS_MODEL_LOCAL_EXEC;

  switch (model)
    {
    case TLS_MODEL_GLOBAL_DYNAMIC:
      insn = FUNC14 (loc, SYMBOL_TLSGD, v0);
      dest = FUNC7 (Pmode);
      FUNC2 (insn, dest, v0, loc);
      break;

    case TLS_MODEL_LOCAL_DYNAMIC:
      insn = FUNC14 (loc, SYMBOL_TLSLDM, v0);
      tmp1 = FUNC7 (Pmode);

      /* Attach a unique REG_EQUIV, to allow the RTL optimizers to
	 share the LDM result with other LD model accesses.  */
      eqv = FUNC11 (Pmode, FUNC8 (1, const0_rtx),
			    UNSPEC_TLS_LDM);
      FUNC2 (insn, tmp1, v0, eqv);

      tmp2 = FUNC16 (NULL, tmp1, loc, SYMBOL_DTPREL);
      dest = FUNC9 (Pmode, tmp2,
			     FUNC15 (loc, SYMBOL_DTPREL));
      break;

    case TLS_MODEL_INITIAL_EXEC:
      tmp1 = FUNC7 (Pmode);
      tmp2 = FUNC15 (loc, SYMBOL_GOTTPREL);
      if (Pmode == DImode)
	{
	  FUNC1 (FUNC12 (v1));
	  FUNC1 (FUNC5 (tmp1, pic_offset_table_rtx, tmp2));
	}
      else
	{
	  FUNC1 (FUNC13 (v1));
	  FUNC1 (FUNC6 (tmp1, pic_offset_table_rtx, tmp2));
	}
      dest = FUNC7 (Pmode);
      FUNC1 (FUNC4 (dest, tmp1, v1));
      break;

    case TLS_MODEL_LOCAL_EXEC:
      if (Pmode == DImode)
	FUNC1 (FUNC12 (v1));
      else
	FUNC1 (FUNC13 (v1));

      tmp1 = FUNC16 (NULL, v1, loc, SYMBOL_TPREL);
      dest = FUNC9 (Pmode, tmp1,
			     FUNC15 (loc, SYMBOL_TPREL));
      break;

    default:
      FUNC3 ();
    }

  return dest;
}