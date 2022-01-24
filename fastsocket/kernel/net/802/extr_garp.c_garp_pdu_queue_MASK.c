#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct garp_applicant {int /*<<< orphan*/ * pdu; int /*<<< orphan*/  queue; TYPE_2__* app; TYPE_3__* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev_addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  group_address; } ;
struct TYPE_5__ {TYPE_1__ proto; } ;

/* Variables and functions */
 int /*<<< orphan*/  LLC_PDU_CMD ; 
 int /*<<< orphan*/  LLC_PDU_TYPE_U ; 
 int /*<<< orphan*/  LLC_SAP_BSPAN ; 
 int /*<<< orphan*/  FUNC0 (struct garp_applicant*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct garp_applicant *app)
{
	if (!app->pdu)
		return;

	FUNC0(app);
	FUNC0(app);

	FUNC2(app->pdu, LLC_PDU_TYPE_U, LLC_SAP_BSPAN,
			    LLC_SAP_BSPAN, LLC_PDU_CMD);
	FUNC3(app->pdu);
	FUNC1(app->pdu, app->dev->dev_addr,
			 app->app->proto.group_address);

	FUNC4(&app->queue, app->pdu);
	app->pdu = NULL;
}