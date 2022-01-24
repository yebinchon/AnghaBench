#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_3__ {scalar_t__ (* signed_type ) (scalar_t__) ;} ;
struct TYPE_4__ {TYPE_1__ types; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_AND_EXPR ; 
 int /*<<< orphan*/  BIT_XOR_EXPR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LSHIFT_EXPR ; 
 int /*<<< orphan*/  RSHIFT_EXPR ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 TYPE_2__ lang_hooks ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 

__attribute__((used)) static tree
FUNC8 (tree c, int p, int unsignedp, tree mask)
{
  tree type = FUNC1 (c);
  int modesize = FUNC0 (FUNC2 (type));
  tree temp;

  if (p == modesize || unsignedp)
    return c;

  /* We work by getting just the sign bit into the low-order bit, then
     into the high-order bit, then sign-extend.  We then XOR that value
     with C.  */
  temp = FUNC4 (RSHIFT_EXPR, c, FUNC6 (p - 1), 0);
  temp = FUNC4 (BIT_AND_EXPR, temp, FUNC6 (1), 0);

  /* We must use a signed type in order to get an arithmetic right shift.
     However, we must also avoid introducing accidental overflows, so that
     a subsequent call to integer_zerop will work.  Hence we must
     do the type conversion here.  At this point, the constant is either
     zero or one, and the conversion to a signed type can never overflow.
     We could get an overflow if this conversion is done anywhere else.  */
  if (FUNC3 (type))
    temp = FUNC5 (lang_hooks.types.signed_type (type), temp);

  temp = FUNC4 (LSHIFT_EXPR, temp, FUNC6 (modesize - 1), 0);
  temp = FUNC4 (RSHIFT_EXPR, temp, FUNC6 (modesize - p - 1), 0);
  if (mask != 0)
    temp = FUNC4 (BIT_AND_EXPR, temp,
			FUNC5 (FUNC1 (c), mask), 0);
  /* If necessary, convert the type back to match the type of C.  */
  if (FUNC3 (type))
    temp = FUNC5 (type, temp);

  return FUNC5 (type, FUNC4 (BIT_XOR_EXPR, c, temp, 0));
}