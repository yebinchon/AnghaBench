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
typedef  int /*<<< orphan*/  decl_t ;
struct TYPE_2__ {scalar_t__ max_occ_cycle_num; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1 (const void *unit_decl_1,
			    const void *unit_decl_2)
{
  if ((FUNC0 (*(decl_t *) unit_decl_1)->max_occ_cycle_num)
      < (FUNC0 (*(decl_t *) unit_decl_2)->max_occ_cycle_num))
    return 1;
  else if ((FUNC0 (*(decl_t *) unit_decl_1)->max_occ_cycle_num)
	   == (FUNC0 (*(decl_t *) unit_decl_2)->max_occ_cycle_num))
    return 0;
  else
    return -1;
}