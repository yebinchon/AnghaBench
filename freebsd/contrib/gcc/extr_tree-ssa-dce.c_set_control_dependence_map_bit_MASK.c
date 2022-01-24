#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* basic_block ;
struct TYPE_5__ {size_t index; } ;

/* Variables and functions */
 TYPE_1__* ENTRY_BLOCK_PTR ; 
 TYPE_1__* EXIT_BLOCK_PTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * control_dependence_map ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static inline void
FUNC2 (basic_block bb, int edge_index)
{
  if (bb == ENTRY_BLOCK_PTR)
    return;
  FUNC1 (bb != EXIT_BLOCK_PTR);
  FUNC0 (control_dependence_map[bb->index], edge_index);
}