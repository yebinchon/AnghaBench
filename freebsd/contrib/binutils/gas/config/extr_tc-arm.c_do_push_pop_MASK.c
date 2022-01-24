#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* operands; } ;
struct TYPE_3__ {int isreg; int writeback; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_SP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__ inst ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2 (void)
{
  inst.operands[1] = inst.operands[0];
  FUNC1 (&inst.operands[0], 0, sizeof inst.operands[0]);
  inst.operands[0].isreg = 1;
  inst.operands[0].writeback = 1;
  inst.operands[0].reg = REG_SP;
  FUNC0 ();
}