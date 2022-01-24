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
struct rtx_iv {scalar_t__ step; int first_special; int extend_mode; scalar_t__ base; int mode; scalar_t__ delta; void* mult; void* extend; } ;
typedef  scalar_t__ rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  MULT ; 
 int /*<<< orphan*/  PLUS ; 
 void* UNKNOWN ; 
 scalar_t__ const0_rtx ; 
 void* const1_rtx ; 
 scalar_t__ FUNC1 (struct rtx_iv*,scalar_t__) ; 
 scalar_t__ FUNC2 (int,scalar_t__,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int,scalar_t__,void*) ; 

__attribute__((used)) static bool
FUNC4 (struct rtx_iv *iv, enum machine_mode mode)
{
  /* If iv is invariant, just calculate the new value.  */
  if (iv->step == const0_rtx
      && !iv->first_special)
    {
      rtx val = FUNC1 (iv, const0_rtx);
      val = FUNC2 (mode, val, iv->extend_mode);

      iv->base = val;
      iv->extend = UNKNOWN;
      iv->mode = iv->extend_mode = mode;
      iv->delta = const0_rtx;
      iv->mult = const1_rtx;
      return true;
    }

  if (iv->extend_mode == mode)
    return true;

  if (FUNC0 (mode) > FUNC0 (iv->mode))
    return false;

  iv->extend = UNKNOWN;
  iv->mode = mode;

  iv->base = FUNC3 (PLUS, iv->extend_mode, iv->delta,
				  FUNC3 (MULT, iv->extend_mode,
						       iv->base, iv->mult));
  iv->step = FUNC3 (MULT, iv->extend_mode, iv->step, iv->mult);
  iv->mult = const1_rtx;
  iv->delta = const0_rtx;
  iv->first_special = false;

  return true;
}