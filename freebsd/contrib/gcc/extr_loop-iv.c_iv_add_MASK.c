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
struct rtx_iv {scalar_t__ extend; scalar_t__ mode; scalar_t__ extend_mode; void* delta; void* base; void* step; } ;
typedef  void* rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int MINUS ; 
 int PLUS ; 
 scalar_t__ UNKNOWN ; 
 int /*<<< orphan*/  ZERO_EXTEND ; 
 void* const0_rtx ; 
 int /*<<< orphan*/  FUNC1 (struct rtx_iv*) ; 
 void* FUNC2 (int,int,void*,void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,scalar_t__,void*,scalar_t__) ; 

__attribute__((used)) static bool
FUNC4 (struct rtx_iv *iv0, struct rtx_iv *iv1, enum rtx_code op)
{
  enum machine_mode mode;
  rtx arg;

  /* Extend the constant to extend_mode of the other operand if necessary.  */
  if (iv0->extend == UNKNOWN
      && iv0->mode == iv0->extend_mode
      && iv0->step == const0_rtx
      && FUNC0 (iv0->extend_mode) < FUNC0 (iv1->extend_mode))
    {
      iv0->extend_mode = iv1->extend_mode;
      iv0->base = FUNC3 (ZERO_EXTEND, iv0->extend_mode,
				      iv0->base, iv0->mode);
    }
  if (iv1->extend == UNKNOWN
      && iv1->mode == iv1->extend_mode
      && iv1->step == const0_rtx
      && FUNC0 (iv1->extend_mode) < FUNC0 (iv0->extend_mode))
    {
      iv1->extend_mode = iv0->extend_mode;
      iv1->base = FUNC3 (ZERO_EXTEND, iv1->extend_mode,
				      iv1->base, iv1->mode);
    }

  mode = iv0->extend_mode;
  if (mode != iv1->extend_mode)
    return false;

  if (iv0->extend == UNKNOWN && iv1->extend == UNKNOWN)
    {
      if (iv0->mode != iv1->mode)
	return false;

      iv0->base = FUNC2 (op, mode, iv0->base, iv1->base);
      iv0->step = FUNC2 (op, mode, iv0->step, iv1->step);

      return true;
    }

  /* Handle addition of constant.  */
  if (iv1->extend == UNKNOWN
      && iv1->mode == mode
      && iv1->step == const0_rtx)
    {
      iv0->delta = FUNC2 (op, mode, iv0->delta, iv1->base);
      return true;
    }

  if (iv0->extend == UNKNOWN
      && iv0->mode == mode
      && iv0->step == const0_rtx)
    {
      arg = iv0->base;
      *iv0 = *iv1;
      if (op == MINUS
	  && !FUNC1 (iv0))
	return false;

      iv0->delta = FUNC2 (PLUS, mode, iv0->delta, arg);
      return true;
    }

  return false;
}