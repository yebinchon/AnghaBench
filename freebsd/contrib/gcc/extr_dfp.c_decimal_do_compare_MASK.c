#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  decimal128 ;
typedef  int /*<<< orphan*/  decNumber ;
struct TYPE_9__ {scalar_t__ traps; } ;
typedef  TYPE_1__ decContext ;
struct TYPE_10__ {scalar_t__ sig; int /*<<< orphan*/  decimal; } ;
typedef  TYPE_2__ REAL_VALUE_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  DEC_INIT_DECIMAL128 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_2__ const*) ; 

int
FUNC7 (const REAL_VALUE_TYPE *a, const REAL_VALUE_TYPE *b,
		    int nan_result)
{
  decContext set;
  decNumber dn, dn2, dn3;
  REAL_VALUE_TYPE a1, b1;

  /* If either operand is non-decimal, create temporary versions.  */
  if (!a->decimal)
    {
      FUNC6 (&a1, a);
      a = &a1;
    }
  if (!b->decimal)
    {
      FUNC6 (&b1, b);
      b = &b1;
    }
    
  /* Convert into decNumber form for comparison operation.  */
  FUNC0 (&set, DEC_INIT_DECIMAL128);
  set.traps = 0;  
  FUNC5 ((decimal128 *) a->sig, &dn2);
  FUNC5 ((decimal128 *) b->sig, &dn3);

  /* Finally, do the comparison.  */
  FUNC1 (&dn, &dn2, &dn3, &set);

  /* Return the comparison result.  */
  if (FUNC2 (&dn))
    return nan_result;
  else if (FUNC4 (&dn))
    return 0;
  else if (FUNC3 (&dn))
    return -1;
  else 
    return 1;
}