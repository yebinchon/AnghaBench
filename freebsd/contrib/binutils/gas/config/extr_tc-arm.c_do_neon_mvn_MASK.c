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
typedef  enum neon_shape { ____Placeholder_neon_shape } neon_shape ;
struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int /*<<< orphan*/  reg; scalar_t__ isreg; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  NS_DD ; 
 int /*<<< orphan*/  NS_NULL ; 
 int /*<<< orphan*/  NS_QQ ; 
 TYPE_2__ inst ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8 (void)
{
  if (inst.operands[1].isreg)
    {
      enum neon_shape rs = FUNC7 (NS_DD, NS_QQ, NS_NULL);
      
      inst.instruction = FUNC3 (inst.instruction);
      inst.instruction |= FUNC1 (inst.operands[0].reg) << 12;
      inst.instruction |= FUNC0 (inst.operands[0].reg) << 22;
      inst.instruction |= FUNC1 (inst.operands[1].reg);
      inst.instruction |= FUNC0 (inst.operands[1].reg) << 5;
      inst.instruction |= FUNC6 (rs) << 6;
    }
  else
    {
      inst.instruction = FUNC2 (inst.instruction);
      FUNC5 ();
    }

  inst.instruction = FUNC4 (inst.instruction);
}