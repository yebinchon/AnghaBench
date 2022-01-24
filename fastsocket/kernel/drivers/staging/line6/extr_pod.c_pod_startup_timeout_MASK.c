#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ ok; } ;
struct usb_line6_pod {TYPE_1__ dumpreq; int /*<<< orphan*/  line6; int /*<<< orphan*/  startup_count; scalar_t__ versionreq_ok; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,void (*) (unsigned long),struct usb_line6_pod*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_line6_pod*) ; 

__attribute__((used)) static void FUNC3(unsigned long arg)
{
	enum {
		REQUEST_NONE,
		REQUEST_DUMP,
		REQUEST_VERSION
	};

	int request = REQUEST_NONE;
	struct usb_line6_pod *pod = (struct usb_line6_pod *)arg;

	if (pod->dumpreq.ok) {
		if (!pod->versionreq_ok)
			request = REQUEST_VERSION;
	} else {
		if (pod->versionreq_ok)
			request = REQUEST_DUMP;
		else if (pod->startup_count++ & 1)
			request = REQUEST_DUMP;
		else
			request = REQUEST_VERSION;
	}

	switch (request) {
	case REQUEST_DUMP:
		FUNC0(&pod->dumpreq, &pod->line6, 0);
		break;

	case REQUEST_VERSION:
		FUNC2(pod);
		break;

	default:
		return;
	}

	FUNC1(&pod->dumpreq, 1, pod_startup_timeout, pod);
}