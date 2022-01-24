#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__** urbs; } ;
struct ua101 {TYPE_3__ capture; int /*<<< orphan*/  states; scalar_t__ rate_feedback_count; scalar_t__ rate_feedback_start; } ;
struct TYPE_5__ {int /*<<< orphan*/  complete; } ;
struct TYPE_6__ {TYPE_1__ urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAPTURE_URB_COMPLETED ; 
 int /*<<< orphan*/  DISCONNECTED ; 
 int ENODEV ; 
 int /*<<< orphan*/  INTF_CAPTURE ; 
 int /*<<< orphan*/  USB_CAPTURE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ua101*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  first_capture_urb_complete ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ua101*) ; 
 int FUNC5 (struct ua101*,TYPE_3__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct ua101 *ua)
{
	int err;

	if (FUNC6(DISCONNECTED, &ua->states))
		return -ENODEV;

	if (FUNC6(USB_CAPTURE_RUNNING, &ua->states))
		return 0;

	FUNC2(&ua->capture);

	err = FUNC1(ua, INTF_CAPTURE);
	if (err < 0)
		return err;

	FUNC0(CAPTURE_URB_COMPLETED, &ua->states);
	ua->capture.urbs[0]->urb.complete = first_capture_urb_complete;
	ua->rate_feedback_start = 0;
	ua->rate_feedback_count = 0;

	FUNC3(USB_CAPTURE_RUNNING, &ua->states);
	err = FUNC5(ua, &ua->capture);
	if (err < 0)
		FUNC4(ua);
	return err;
}