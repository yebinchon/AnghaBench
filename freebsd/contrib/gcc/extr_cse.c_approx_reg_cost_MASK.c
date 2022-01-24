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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int MAX_COST ; 
 int /*<<< orphan*/  approx_reg_cost_1 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int
FUNC1 (rtx x)
{
  int cost = 0;

  if (FUNC0 (&x, approx_reg_cost_1, (void *) &cost))
    return MAX_COST;

  return cost;
}