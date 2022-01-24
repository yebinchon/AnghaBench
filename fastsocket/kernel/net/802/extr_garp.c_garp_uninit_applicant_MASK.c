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
struct net_device {struct garp_port* garp_port; } ;
struct garp_port {struct garp_applicant** applicants; } ;
struct TYPE_2__ {int /*<<< orphan*/  group_address; } ;
struct garp_application {size_t type; TYPE_1__ proto; } ;
struct garp_applicant {int /*<<< orphan*/  join_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GARP_EVENT_TRANSMIT_PDU ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct garp_applicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct garp_applicant*) ; 
 int /*<<< orphan*/  FUNC5 (struct garp_applicant*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct garp_applicant*) ; 
 int /*<<< orphan*/  FUNC8 (struct garp_applicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 

void FUNC10(struct net_device *dev, struct garp_application *appl)
{
	struct garp_port *port = dev->garp_port;
	struct garp_applicant *app = port->applicants[appl->type];

	FUNC0();

	FUNC8(port->applicants[appl->type], NULL);
	FUNC9();

	/* Delete timer and generate a final TRANSMIT_PDU event to flush out
	 * all pending messages before the applicant is gone. */
	FUNC1(&app->join_timer);
	FUNC3(app, GARP_EVENT_TRANSMIT_PDU);
	FUNC4(app);
	FUNC5(app);

	FUNC2(dev, appl->proto.group_address, ETH_ALEN, 0);
	FUNC7(app);
	FUNC6(dev);
}