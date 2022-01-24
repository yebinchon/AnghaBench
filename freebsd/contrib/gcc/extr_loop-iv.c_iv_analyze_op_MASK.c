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
struct rtx_iv {int dummy; } ;
struct df_ref {int dummy; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum iv_grd_result { ____Placeholder_iv_grd_result } iv_grd_result ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int GRD_INVALID ; 
 int GRD_INVARIANT ; 
 int GRD_MAYBE_BIV ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOIDmode ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct rtx_iv*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct rtx_iv*) ; 
 int FUNC7 (struct df_ref*,struct rtx_iv*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtx_iv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct df_ref**) ; 
 int FUNC10 (struct rtx_iv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC14 (rtx insn, rtx op, struct rtx_iv *iv)
{
  struct df_ref *def = NULL;
  enum iv_grd_result res;

  if (dump_file)
    {
      FUNC5 (dump_file, "Analysing operand ");
      FUNC11 (dump_file, op);
      FUNC5 (dump_file, " of insn ");
      FUNC12 (dump_file, insn);
    }

  if (FUNC0 (op))
    res = GRD_INVARIANT;
  else if (FUNC1 (op) == SUBREG)
    {
      if (!FUNC13 (op))
	return false;

      if (!FUNC14 (insn, FUNC3 (op), iv))
	return false;

      return FUNC10 (iv, FUNC2 (op));
    }
  else
    {
      res = FUNC9 (insn, op, &def);
      if (res == GRD_INVALID)
	{
	  if (dump_file)
	    FUNC5 (dump_file, "  not simple.\n");
	  return false;
	}
    }

  if (res == GRD_INVARIANT)
    {
      FUNC8 (iv, op, VOIDmode);

      if (dump_file)
	{
	  FUNC5 (dump_file, "  ");
	  FUNC4 (dump_file, iv);
	  FUNC5 (dump_file, "\n");
	}
      return true;
    }

  if (res == GRD_MAYBE_BIV)
    return FUNC6 (op, iv);

  return FUNC7 (def, iv);
}