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
typedef  int u32 ;
struct oxu_hcd {TYPE_1__* regs; } ;
struct TYPE_4__ {void* state; } ;
struct TYPE_3__ {int /*<<< orphan*/  status; int /*<<< orphan*/  command; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int CMD_ASE ; 
 int CMD_IAAD ; 
 int CMD_PSE ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* HC_STATE_HALT ; 
 int STS_ASS ; 
 int STS_PSS ; 
 scalar_t__ FUNC2 (struct oxu_hcd*,int /*<<< orphan*/ *,int,int,int) ; 
 TYPE_2__* FUNC3 (struct oxu_hcd*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct oxu_hcd *oxu)
{
	u32	temp;

#ifdef DEBUG
	if (!HC_IS_RUNNING(oxu_to_hcd(oxu)->state))
		BUG();
#endif

	/* wait for any schedule enables/disables to take effect */
	temp = FUNC4(&oxu->regs->command) << 10;
	temp &= STS_ASS | STS_PSS;
	if (FUNC2(oxu, &oxu->regs->status, STS_ASS | STS_PSS,
				temp, 16 * 125) != 0) {
		FUNC3(oxu)->state = HC_STATE_HALT;
		return;
	}

	/* then disable anything that's still active */
	temp = FUNC4(&oxu->regs->command);
	temp &= ~(CMD_ASE | CMD_IAAD | CMD_PSE);
	FUNC5(temp, &oxu->regs->command);

	/* hardware can take 16 microframes to turn off ... */
	if (FUNC2(oxu, &oxu->regs->status, STS_ASS | STS_PSS,
				0, 16 * 125) != 0) {
		FUNC3(oxu)->state = HC_STATE_HALT;
		return;
	}
}