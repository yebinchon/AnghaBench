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
struct mixart_mgr {scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIXART_ALLOW_OUTBOUND_DOORBELL ; 
 int /*<<< orphan*/  FUNC0 (struct mixart_mgr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MIXART_PCI_OMIMR_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (struct mixart_mgr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSG_AGENT_RSC_PROTECTION ; 
 int /*<<< orphan*/  MSG_HOST_RSC_PROTECTION ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct mixart_mgr *mgr)
{
	FUNC2( 0, FUNC0( mgr, MSG_HOST_RSC_PROTECTION ) );
	FUNC2( 0, FUNC0( mgr, MSG_AGENT_RSC_PROTECTION ) );

	/* allow outbound messagebox to generate interrupts */
	if(mgr->irq >= 0) {
		FUNC3( MIXART_ALLOW_OUTBOUND_DOORBELL, FUNC1( mgr, MIXART_PCI_OMIMR_OFFSET));
	}
	return;
}