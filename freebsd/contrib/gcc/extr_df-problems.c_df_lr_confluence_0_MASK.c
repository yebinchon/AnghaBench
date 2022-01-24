#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct df {int /*<<< orphan*/  hardware_regs_used; } ;
struct dataflow {struct df* df; } ;
typedef  int /*<<< orphan*/  bitmap ;
typedef  TYPE_1__* basic_block ;
struct TYPE_6__ {int /*<<< orphan*/  out; } ;
struct TYPE_5__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 TYPE_1__* EXIT_BLOCK_PTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct dataflow*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (struct dataflow *dflow, basic_block bb)
{
  struct df *df = dflow->df;

  bitmap op1 = FUNC1 (dflow, bb->index)->out;
  if (bb != EXIT_BLOCK_PTR)
    FUNC0 (op1, df->hardware_regs_used);
}