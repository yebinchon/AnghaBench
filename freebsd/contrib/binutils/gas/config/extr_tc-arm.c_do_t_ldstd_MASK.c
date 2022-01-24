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
struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int reg; int /*<<< orphan*/  present; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int REG_LR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ inst ; 

__attribute__((used)) static void
FUNC3 (void)
{
  if (!inst.operands[1].present)
    {
      inst.operands[1].reg = inst.operands[0].reg + 1;
      FUNC1 (inst.operands[0].reg == REG_LR,
		  FUNC0("r14 not allowed here"));
    }
  inst.instruction |= inst.operands[0].reg << 12;
  inst.instruction |= inst.operands[1].reg << 8;
  FUNC2 (2, /*is_t=*/FALSE, /*is_d=*/TRUE);
			    
}