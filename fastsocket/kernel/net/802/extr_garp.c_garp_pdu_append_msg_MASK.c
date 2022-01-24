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
typedef  void* u8 ;
struct garp_msg_hdr {void* attrtype; } ;
struct garp_applicant {int /*<<< orphan*/  pdu; } ;
struct TYPE_2__ {void* cur_type; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct garp_applicant *app, u8 attrtype)
{
	struct garp_msg_hdr *gm;

	if (FUNC2(app->pdu) < sizeof(*gm))
		return -1;
	gm = (struct garp_msg_hdr *)FUNC0(app->pdu, sizeof(*gm));
	gm->attrtype = attrtype;
	FUNC1(app->pdu)->cur_type = attrtype;
	return 0;
}