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
struct invariant {unsigned int eqto; } ;
struct df_ref {int dummy; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
#define  CONST 133 
#define  CONST_DOUBLE 132 
#define  CONST_INT 131 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (int) ; 
#define  LABEL_REF 130 
#define  REG 129 
#define  SYMBOL_REF 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  df ; 
 struct df_ref* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 struct invariant* FUNC10 (struct df_ref*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC12 (rtx insn1, rtx e1, rtx insn2, rtx e2)
{
  enum rtx_code code = FUNC0 (e1);
  int i, j;
  const char *fmt;
  struct df_ref *use1, *use2;
  struct invariant *inv1 = NULL, *inv2 = NULL;
  rtx sub1, sub2;

  /* If mode of only one of the operands is VOIDmode, it is not equivalent to
     the other one.  If both are VOIDmode, we rely on the caller of this
     function to verify that their modes are the same.  */
  if (code != FUNC0 (e2) || FUNC1 (e1) != FUNC1 (e2))
    return false;

  switch (code)
    {
    case CONST_INT:
    case CONST_DOUBLE:
    case SYMBOL_REF:
    case CONST:
    case LABEL_REF:
      return FUNC11 (e1, e2);

    case REG:
      use1 = FUNC8 (df, insn1, e1);
      use2 = FUNC8 (df, insn2, e2);
      if (use1)
	inv1 = FUNC10 (use1);
      if (use2)
	inv2 = FUNC10 (use2);

      if (!inv1 && !inv2)
	return FUNC11 (e1, e2);

      if (!inv1 || !inv2)
	return false;

      FUNC9 (inv1->eqto != ~0u);
      FUNC9 (inv2->eqto != ~0u);
      return inv1->eqto == inv2->eqto;

    default:
      break;
    }

  fmt = FUNC2 (code);
  for (i = FUNC3 (code) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e')
	{
	  sub1 = FUNC4 (e1, i);
	  sub2 = FUNC4 (e2, i);

	  if (!FUNC12 (insn1, sub1, insn2, sub2))
	    return false;
	}

      else if (fmt[i] == 'E')
	{
	  if (FUNC7 (e1, i) != FUNC7 (e2, i))
	    return false;

	  for (j = 0; j < FUNC7 (e1, i); j++)
	    {
	      sub1 = FUNC6 (e1, i, j);
	      sub2 = FUNC6 (e2, i, j);

	      if (!FUNC12 (insn1, sub1, insn2, sub2))
		return false;
	    }
	}
      else if (fmt[i] == 'i' || fmt[i] == 'n')
	{
	  if (FUNC5 (e1, i) != FUNC5 (e2, i))
	    return false;
	}
      /* Unhandled type of subexpression, we fail conservatively.  */
      else
	return false;
    }

  return true;
}