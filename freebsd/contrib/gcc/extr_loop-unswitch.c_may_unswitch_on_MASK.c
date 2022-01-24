#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct rtx_iv {scalar_t__ step; scalar_t__ first_special; } ;
struct loop {int dummy; } ;
typedef  scalar_t__ rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  TYPE_1__* basic_block ;
struct TYPE_8__ {int /*<<< orphan*/  dest; } ;
struct TYPE_7__ {int /*<<< orphan*/  succs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ MODE_CC ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  SImode ; 
 int VOIDmode ; 
 scalar_t__ FUNC7 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ const0_rtx ; 
 scalar_t__ const_true_rtx ; 
 int /*<<< orphan*/  FUNC10 (struct loop*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__*,int,int) ; 
 scalar_t__ FUNC13 (struct rtx_iv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__,struct rtx_iv*) ; 
 int /*<<< orphan*/  FUNC15 (struct loop*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 

__attribute__((used)) static rtx
FUNC18 (basic_block bb, struct loop *loop, rtx *cinsn)
{
  rtx test, at, op[2], stest;
  struct rtx_iv iv;
  unsigned i;
  enum machine_mode mode;

  /* BB must end in a simple conditional jump.  */
  if (FUNC2 (bb->succs) != 2)
    return NULL_RTX;
  if (!FUNC8 (FUNC0 (bb)))
    return NULL_RTX;

  /* With branches inside loop.  */
  if (!FUNC10 (loop, FUNC3 (bb, 0)->dest)
      || !FUNC10 (loop, FUNC3 (bb, 1)->dest))
    return NULL_RTX;

  /* It must be executed just once each iteration (because otherwise we
     are unable to update dominator/irreducible loop information correctly).  */
  if (!FUNC15 (loop, bb))
    return NULL_RTX;

  /* Condition must be invariant.  */
  test = FUNC12 (FUNC0 (bb), &at, true, false);
  if (!test)
    return NULL_RTX;

  for (i = 0; i < 2; i++)
    {
      op[i] = FUNC7 (test, i);

      if (FUNC1 (op[i]))
	continue;

      if (!FUNC14 (at, op[i], &iv))
	return NULL_RTX;
      if (iv.step != const0_rtx
	  || iv.first_special)
	return NULL_RTX;

      op[i] = FUNC13 (&iv, const0_rtx);
    }

  mode = FUNC5 (op[0]);
  if (mode == VOIDmode)
    mode = FUNC5 (op[1]);
  if (FUNC6 (mode) == MODE_CC)
    {
      if (at != FUNC0 (bb))
	return NULL_RTX;

      if (!FUNC16 (op[0], FUNC7 (test, 0))
	  || !FUNC16 (op[1], FUNC7 (test, 1)))
	return NULL_RTX;

      *cinsn = FUNC0 (bb);
      return test;
    }

  stest = FUNC17 (FUNC4 (test), SImode,
				   mode, op[0], op[1]);
  if (stest == const0_rtx
      || stest == const_true_rtx)
    return stest;

  return FUNC9 (FUNC11 (FUNC4 (test), SImode,
					  op[0], op[1]));
}