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
typedef  int /*<<< orphan*/  u8 ;
struct net_device {struct garp_port* garp_port; } ;
struct garp_port {struct garp_applicant** applicants; } ;
struct garp_attr {int dummy; } ;
struct garp_application {size_t type; } ;
struct garp_applicant {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GARP_EVENT_REQ_LEAVE ; 
 int /*<<< orphan*/  FUNC0 (struct garp_applicant*,struct garp_attr*,int /*<<< orphan*/ ) ; 
 struct garp_attr* FUNC1 (struct garp_applicant*,void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(const struct net_device *dev,
			const struct garp_application *appl,
			const void *data, u8 len, u8 type)
{
	struct garp_port *port = dev->garp_port;
	struct garp_applicant *app = port->applicants[appl->type];
	struct garp_attr *attr;

	FUNC2(&app->lock);
	attr = FUNC1(app, data, len, type);
	if (!attr) {
		FUNC3(&app->lock);
		return;
	}
	FUNC0(app, attr, GARP_EVENT_REQ_LEAVE);
	FUNC3(&app->lock);
}