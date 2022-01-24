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
typedef  int hashval_t ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
#define  CONST 133 
#define  CONST_DOUBLE 132 
#define  CONST_INT 131 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (int) ; 
#define  LABEL_REF 130 
#define  REG 129 
#define  SYMBOL_REF 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  df ; 
 struct df_ref* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,int) ; 
 struct invariant* FUNC11 (struct df_ref*) ; 

__attribute__((used)) static hashval_t
FUNC12 (rtx insn, rtx x)
{
  enum rtx_code code = FUNC0 (x);
  int i, j;
  const char *fmt;
  hashval_t val = code;
  int do_not_record_p;
  struct df_ref *use;
  struct invariant *inv;

  switch (code)
    {
    case CONST_INT:
    case CONST_DOUBLE:
    case SYMBOL_REF:
    case CONST:
    case LABEL_REF:
      return FUNC10 (x, FUNC1 (x), &do_not_record_p, NULL, false);

    case REG:
      use = FUNC8 (df, insn, x);
      if (!use)
	return FUNC10 (x, FUNC1 (x), &do_not_record_p, NULL, false);
      inv = FUNC11 (use);
      if (!inv)
	return FUNC10 (x, FUNC1 (x), &do_not_record_p, NULL, false);

      FUNC9 (inv->eqto != ~0u);
      return inv->eqto;

    default:
      break;
    }

  fmt = FUNC2 (code);
  for (i = FUNC3 (code) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e')
	val ^= FUNC12 (insn, FUNC4 (x, i));
      else if (fmt[i] == 'E')
	{
	  for (j = 0; j < FUNC7 (x, i); j++)
	    val ^= FUNC12 (insn, FUNC6 (x, i, j));
	}
      else if (fmt[i] == 'i' || fmt[i] == 'n')
	val ^= FUNC5 (x, i);
    }

  return val;
}