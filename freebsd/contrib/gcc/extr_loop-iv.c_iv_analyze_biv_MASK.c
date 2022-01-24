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
struct rtx_iv {int mode; int extend_mode; int extend; int first_special; void* base; int /*<<< orphan*/  delta; int /*<<< orphan*/  mult; void* step; } ;
struct df_ref {int dummy; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MINUS ; 
 void* NULL_RTX ; 
 int /*<<< orphan*/  PLUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOIDmode ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct rtx_iv*) ; 
 int /*<<< orphan*/  const1_rtx ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct rtx_iv*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct df_ref*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int*,int*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct rtx_iv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct df_ref**) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct rtx_iv*) ; 
 void* FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC11 (rtx def, struct rtx_iv *iv)
{
  rtx inner_step, outer_step;
  enum machine_mode inner_mode, outer_mode;
  enum rtx_code extend;
  struct df_ref *last_def;

  if (dump_file)
    {
      FUNC4 (dump_file, "Analyzing ");
      FUNC8 (dump_file, def);
      FUNC4 (dump_file, " for bivness.\n");
    }
    
  if (!FUNC1 (def))
    {
      if (!FUNC0 (def))
	return false;

      return FUNC6 (iv, def, VOIDmode);
    }

  if (!FUNC7 (def, &last_def))
    {
      if (dump_file)
	FUNC4 (dump_file, "  not simple.\n");
      return false;
    }

  if (!last_def)
    return FUNC6 (iv, def, VOIDmode);

  if (FUNC2 (def, iv))
    {
      if (dump_file)
	FUNC4 (dump_file, "  already analysed.\n");
      return iv->base != NULL_RTX;
    }

  if (!FUNC5 (last_def, def, &inner_step, &inner_mode, &extend,
		     &outer_mode, &outer_step))
    {
      iv->base = NULL_RTX;
      goto end;
    }

  /* Loop transforms base to es (base + inner_step) + outer_step,
     where es means extend of subreg between inner_mode and outer_mode.
     The corresponding induction variable is

     es ((base - outer_step) + i * (inner_step + outer_step)) + outer_step  */

  iv->base = FUNC10 (MINUS, outer_mode, def, outer_step);
  iv->step = FUNC10 (PLUS, outer_mode, inner_step, outer_step);
  iv->mode = inner_mode;
  iv->extend_mode = outer_mode;
  iv->extend = extend;
  iv->mult = const1_rtx;
  iv->delta = outer_step;
  iv->first_special = inner_mode != outer_mode;

 end:
  if (dump_file)
    {
      FUNC4 (dump_file, "  ");
      FUNC3 (dump_file, iv);
      FUNC4 (dump_file, "\n");
    }

  FUNC9 (def, iv);
  return iv->base != NULL_RTX;
}