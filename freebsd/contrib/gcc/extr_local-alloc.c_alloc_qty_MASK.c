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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {int first_reg; int size; int mode; int birth; int /*<<< orphan*/  freq; int /*<<< orphan*/  n_refs; int /*<<< orphan*/  alternate_class; int /*<<< orphan*/  min_class; int /*<<< orphan*/  n_throwing_calls_crossed; int /*<<< orphan*/  n_calls_crossed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  next_qty ; 
 TYPE_1__* qty ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int* reg_next_in_qty ; 
 scalar_t__* reg_offset ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int* reg_qty ; 

__attribute__((used)) static void
FUNC6 (int regno, enum machine_mode mode, int size, int birth)
{
  int qtyno = next_qty++;

  reg_qty[regno] = qtyno;
  reg_offset[regno] = 0;
  reg_next_in_qty[regno] = -1;

  qty[qtyno].first_reg = regno;
  qty[qtyno].size = size;
  qty[qtyno].mode = mode;
  qty[qtyno].birth = birth;
  qty[qtyno].n_calls_crossed = FUNC1 (regno);
  qty[qtyno].n_throwing_calls_crossed = FUNC3 (regno);
  qty[qtyno].min_class = FUNC5 (regno);
  qty[qtyno].alternate_class = FUNC4 (regno);
  qty[qtyno].n_refs = FUNC2 (regno);
  qty[qtyno].freq = FUNC0 (regno);
}