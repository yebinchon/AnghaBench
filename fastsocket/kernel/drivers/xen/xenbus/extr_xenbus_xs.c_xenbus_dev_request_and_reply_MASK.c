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
struct xsd_sockmsg {scalar_t__ type; scalar_t__ len; } ;
struct TYPE_2__ {int /*<<< orphan*/  transaction_mutex; int /*<<< orphan*/  request_mutex; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 scalar_t__ XS_ERROR ; 
 scalar_t__ XS_TRANSACTION_END ; 
 scalar_t__ XS_TRANSACTION_START ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct xsd_sockmsg*,scalar_t__) ; 
 TYPE_1__ xs_state ; 

void *FUNC7(struct xsd_sockmsg *msg)
{
	void *ret;
	struct xsd_sockmsg req_msg = *msg;
	int err;

	if (req_msg.type == XS_TRANSACTION_START)
		FUNC1(&xs_state.transaction_mutex);

	FUNC2(&xs_state.request_mutex);

	err = FUNC6(msg, sizeof(*msg) + msg->len);
	if (err) {
		msg->type = XS_ERROR;
		ret = FUNC0(err);
	} else
		ret = FUNC4(&msg->type, &msg->len);

	FUNC3(&xs_state.request_mutex);

	if ((msg->type == XS_TRANSACTION_END) ||
	    ((req_msg.type == XS_TRANSACTION_START) &&
	     (msg->type == XS_ERROR)))
		FUNC5(&xs_state.transaction_mutex);

	return ret;
}