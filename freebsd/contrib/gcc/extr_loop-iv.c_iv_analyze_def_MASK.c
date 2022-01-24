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
struct rtx_iv {scalar_t__ base; scalar_t__ step; int /*<<< orphan*/  mode; } ;
struct df_ref {int dummy; } ;
typedef  scalar_t__ rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct df_ref*) ; 
 struct rtx_iv* FUNC1 (struct df_ref*) ; 
 scalar_t__ FUNC2 (struct df_ref*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  VOIDmode ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,struct rtx_iv*) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,struct rtx_iv*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct df_ref*,struct rtx_iv*) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC15 (struct df_ref *def, struct rtx_iv *iv)
{
  rtx insn = FUNC0 (def);
  rtx reg = FUNC2 (def);
  rtx set, rhs;

  if (dump_file)
    {
      FUNC9 (dump_file, "Analysing def of ");
      FUNC11 (dump_file, reg);
      FUNC9 (dump_file, " in insn ");
      FUNC12 (dump_file, insn);
    }

  if (FUNC1 (def))
    {
      if (dump_file)
	FUNC9 (dump_file, "  already analysed.\n");
      *iv = *FUNC1 (def);
      return iv->base != NULL_RTX;
    }

  iv->mode = VOIDmode;
  iv->base = NULL_RTX;
  iv->step = NULL_RTX;

  set = FUNC14 (insn);
  if (!set || FUNC4 (set) != reg)
    return false;

  rhs = FUNC8 (insn);
  if (rhs)
    rhs = FUNC6 (rhs, 0);
  else
    rhs = FUNC5 (set);

  FUNC10 (insn, rhs, FUNC3 (reg), iv);
  FUNC13 (def, iv);

  if (dump_file)
    {
      FUNC11 (dump_file, reg);
      FUNC9 (dump_file, " in insn ");
      FUNC12 (dump_file, insn);
      FUNC9 (dump_file, "  is ");
      FUNC7 (dump_file, iv);
      FUNC9 (dump_file, "\n");
    }

  return iv->base != NULL_RTX;
}