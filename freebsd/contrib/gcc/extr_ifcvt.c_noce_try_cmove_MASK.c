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
struct noce_if_info {scalar_t__ x; int /*<<< orphan*/  insn_a; int /*<<< orphan*/  jump; int /*<<< orphan*/  b; int /*<<< orphan*/  a; int /*<<< orphan*/  cond; } ;
typedef  scalar_t__ rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct noce_if_info*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (struct noce_if_info*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int
FUNC11 (struct noce_if_info *if_info)
{
  enum rtx_code code;
  rtx target, seq;

  if ((FUNC0 (if_info->a) || FUNC9 (if_info->a, VOIDmode))
      && (FUNC0 (if_info->b) || FUNC9 (if_info->b, VOIDmode)))
    {
      FUNC10 ();

      code = FUNC1 (if_info->cond);
      target = FUNC7 (if_info, if_info->x, code,
				FUNC3 (if_info->cond, 0),
				FUNC3 (if_info->cond, 1),
				if_info->a, if_info->b);

      if (target)
	{
	  if (target != if_info->x)
	    FUNC8 (if_info->x, target);

	  seq = FUNC5 (if_info);
	  if (!seq)
	    return FALSE;

	  FUNC4 (seq, if_info->jump,
				   FUNC2 (if_info->insn_a));
	  return TRUE;
	}
      else
	{
	  FUNC6 ();
	  return FALSE;
	}
    }

  return FALSE;
}