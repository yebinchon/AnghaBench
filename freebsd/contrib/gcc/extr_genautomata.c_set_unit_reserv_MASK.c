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
typedef  int /*<<< orphan*/  set_el_t ;
typedef  int /*<<< orphan*/  reserv_sets_t ;

/* Variables and functions */
 int CHAR_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int els_in_cycle_reserv ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int max_cycles_num ; 

__attribute__((used)) static void
FUNC2 (reserv_sets_t reservs, int cycle_num, int unit_num)
{
  FUNC1 (cycle_num < max_cycles_num);
  FUNC0 (reservs, cycle_num * els_in_cycle_reserv
           * sizeof (set_el_t) * CHAR_BIT + unit_num);
}