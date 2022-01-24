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
typedef  scalar_t__ tree ;
struct iv {scalar_t__ step; } ;

/* Variables and functions */
 scalar_t__ INTEGER_CST ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC8 (struct iv *iv)
{
  tree step = iv->step, period, type;
  tree pow2div;

  FUNC4 (step && FUNC0 (step) == INTEGER_CST);

  /* Period of the iv is gcd (step, type range).  Since type range is power
     of two, it suffices to determine the maximum power of two that divides
     step.  */
  pow2div = FUNC5 (step);
  type = FUNC7 (FUNC1 (step));

  period = FUNC3 (type,
				(FUNC2 (type)
				 - FUNC6 (pow2div, 1)));

  return period;
}