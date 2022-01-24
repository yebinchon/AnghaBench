#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uByte ;
struct TYPE_12__ {int bits; scalar_t__ exponent; int* lsu; } ;
typedef  TYPE_1__ decNumber ;
typedef  int Unit ;

/* Variables and functions */
 int DECSPECIAL ; 
 int /*<<< orphan*/  DECUNUSED ; 
 scalar_t__ FUNC0 (TYPE_1__*,TYPE_1__ const*,TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__ const*) ; 
 scalar_t__ FUNC2 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

decNumber *
FUNC4 (decNumber * res, const decNumber * lhs, const decNumber * rhs)
{
  uByte merged;			/* merged flags */
  Unit ret = 0;			/* return value */

#if DECCHECK
  if (decCheckOperands (res, lhs, rhs, DECUNUSED))
    return res;
#endif

  merged = (lhs->bits | rhs->bits) & DECSPECIAL;
  if (merged)
    {
      if (FUNC2 (lhs) && FUNC2 (rhs))
	ret = 1;
      else if (FUNC1 (lhs) && FUNC1 (rhs))
	ret = 1;
      /* [anything else with a special gives 0] */
    }
  else if (lhs->exponent == rhs->exponent)
    ret = 1;

  FUNC3 (res);		/* OK to overwrite an operand */
  *res->lsu = ret;
  return res;
}