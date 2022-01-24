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
struct rtx_iv {scalar_t__ step; scalar_t__ base; scalar_t__ extend; scalar_t__ delta; scalar_t__ mult; int /*<<< orphan*/  extend_mode; int /*<<< orphan*/  mode; int /*<<< orphan*/  first_special; } ;
typedef  scalar_t__ rtx ;

/* Variables and functions */
 int /*<<< orphan*/  MULT ; 
 int /*<<< orphan*/  PLUS ; 
 scalar_t__ UNKNOWN ; 
 scalar_t__ const0_rtx ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

rtx
FUNC4 (struct rtx_iv *iv, rtx iteration)
{
  rtx val;

  /* We would need to generate some if_then_else patterns, and so far
     it is not needed anywhere.  */
  FUNC0 (!iv->first_special);

  if (iv->step != const0_rtx && iteration != const0_rtx)
    val = FUNC2 (PLUS, iv->extend_mode, iv->base,
			       FUNC2 (MULT, iv->extend_mode,
						    iv->step, iteration));
  else
    val = iv->base;

  if (iv->extend_mode == iv->mode)
    return val;

  val = FUNC1 (iv->mode, val, iv->extend_mode);

  if (iv->extend == UNKNOWN)
    return val;

  val = FUNC3 (iv->extend, iv->extend_mode, val, iv->mode);
  val = FUNC2 (PLUS, iv->extend_mode, iv->delta,
			     FUNC2 (MULT, iv->extend_mode,
						  iv->mult, val));

  return val;
}