#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct function {TYPE_1__* eh; } ;
struct eh_region {int region_number; struct eh_region* outer; } ;
typedef  int /*<<< orphan*/  sbitmap ;
struct TYPE_2__ {scalar_t__ last_region_number; int region_tree; int /*<<< orphan*/  region_array; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct eh_region* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  eh_region ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int
FUNC7 (struct function *ifun, int region_a, int region_b)
{
  struct eh_region *rp_a, *rp_b;
  sbitmap b_outer;

  FUNC3 (ifun->eh->last_region_number > 0);
  FUNC3 (ifun->eh->region_tree);

  rp_a = FUNC2 (eh_region, ifun->eh->region_array, region_a);
  rp_b = FUNC2 (eh_region, ifun->eh->region_array, region_b);
  FUNC3 (rp_a != NULL);
  FUNC3 (rp_b != NULL);

  b_outer = FUNC4 (ifun->eh->last_region_number + 1);
  FUNC6 (b_outer);

  do
    {
      FUNC0 (b_outer, rp_b->region_number);
      rp_b = rp_b->outer;
    }
  while (rp_b);

  do
    {
      if (FUNC1 (b_outer, rp_a->region_number))
	{
	  FUNC5 (b_outer);
	  return rp_a->region_number;
	}
      rp_a = rp_a->outer;
    }
  while (rp_a);

  FUNC5 (b_outer);
  return -1;
}