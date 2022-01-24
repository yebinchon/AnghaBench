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
typedef  unsigned int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  irqs_reconfig; } ;
struct pxa_udc {unsigned int config; TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  UDCCR ; 
 unsigned int UDCCR_AAISN ; 
 unsigned int UDCCR_AAISN_S ; 
 unsigned int UDCCR_ACN ; 
 unsigned int UDCCR_ACN_S ; 
 unsigned int UDCCR_AIN ; 
 unsigned int UDCCR_AIN_S ; 
 int /*<<< orphan*/  UDCCR_SMAC ; 
 int /*<<< orphan*/  UDCISR1 ; 
 int /*<<< orphan*/  UDCISR1_IRCC ; 
 int /*<<< orphan*/  FUNC0 (struct pxa_udc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa_udc*,unsigned int,unsigned int) ; 
 unsigned int FUNC2 (struct pxa_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pxa_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pxa_udc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pxa_udc*) ; 

__attribute__((used)) static void FUNC6(struct pxa_udc *udc)
{
	unsigned config, interface, alternate, config_change;
	u32 udccr = FUNC2(udc, UDCCR);

	FUNC4(udc, UDCISR1, UDCISR1_IRCC);
	udc->stats.irqs_reconfig++;

	config = (udccr & UDCCR_ACN) >> UDCCR_ACN_S;
	config_change = (config != udc->config);
	FUNC0(udc, config);

	interface = (udccr & UDCCR_AIN) >> UDCCR_AIN_S;
	alternate = (udccr & UDCCR_AAISN) >> UDCCR_AAISN_S;
	FUNC1(udc, interface, alternate);

	if (config_change)
		FUNC5(udc);
	FUNC3(udc, UDCCR_SMAC);
}