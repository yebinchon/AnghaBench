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
struct hidp_session {TYPE_3__* hid; TYPE_2__* input; int /*<<< orphan*/  state; int /*<<< orphan*/  flags; int /*<<< orphan*/  bdaddr; } ;
struct hidp_conninfo {int vendor; int product; int version; int /*<<< orphan*/  name; int /*<<< orphan*/  state; int /*<<< orphan*/  flags; int /*<<< orphan*/  bdaddr; } ;
struct TYPE_6__ {int vendor; int product; int version; char* name; } ;
struct TYPE_4__ {int vendor; int product; int version; } ;
struct TYPE_5__ {char* name; TYPE_1__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC3(struct hidp_session *session, struct hidp_conninfo *ci)
{
	FUNC0(&ci->bdaddr, &session->bdaddr);

	ci->flags = session->flags;
	ci->state = session->state;

	ci->vendor  = 0x0000;
	ci->product = 0x0000;
	ci->version = 0x0000;
	FUNC1(ci->name, 0, 128);

	if (session->input) {
		ci->vendor  = session->input->id.vendor;
		ci->product = session->input->id.product;
		ci->version = session->input->id.version;
		if (session->input->name)
			FUNC2(ci->name, session->input->name, 128);
		else
			FUNC2(ci->name, "HID Boot Device", 128);
	}

	if (session->hid) {
		ci->vendor  = session->hid->vendor;
		ci->product = session->hid->product;
		ci->version = session->hid->version;
		FUNC2(ci->name, session->hid->name, 128);
	}
}