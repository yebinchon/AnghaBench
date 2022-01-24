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
typedef  int u8 ;
typedef  int u16 ;
struct uwb_rceb {int wEvent; int bEventType; } ;
struct uwb_rccb {int bCommandContext; } ;
struct i1480 {size_t (* cmd ) (struct i1480*,char const*,size_t) ;size_t (* wait_init_done ) (struct i1480*) ;struct uwb_rceb* evt_buf; int /*<<< orphan*/  dev; int /*<<< orphan*/  evt_result; int /*<<< orphan*/  evt_complete; struct uwb_rccb* cmd_buf; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,size_t,...) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 size_t FUNC2 (struct i1480*,struct uwb_rceb*,char const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (struct i1480*,char const*,size_t) ; 
 size_t FUNC5 (struct i1480*) ; 
 size_t FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

ssize_t FUNC7(struct i1480 *i1480, const char *cmd_name, size_t cmd_size,
		  size_t reply_size)
{
	ssize_t result;
	struct uwb_rceb *reply = i1480->evt_buf;
	struct uwb_rccb *cmd = i1480->cmd_buf;
	u16 expected_event = reply->wEvent;
	u8 expected_type = reply->bEventType;
	u8 context;

	FUNC3(&i1480->evt_complete);
	i1480->evt_result = -EINPROGRESS;
	do {
		FUNC1(&context, 1);
	} while (context == 0x00 || context == 0xff);
	cmd->bCommandContext = context;
	result = i1480->cmd(i1480, cmd_name, cmd_size);
	if (result < 0)
		goto error;
	/* wait for the callback to report a event was received */
	result = FUNC6(
		&i1480->evt_complete, HZ);
	if (result == 0) {
		result = -ETIMEDOUT;
		goto error;
	}
	if (result < 0)
		goto error;
	result = i1480->evt_result;
	if (result < 0) {
		FUNC0(i1480->dev, "%s: command reply reception failed: %zd\n",
			cmd_name, result);
		goto error;
	}
	/*
	 * Firmware versions >= 1.4.12224 for IOGear GUWA100U generate a
	 * spurious notification after firmware is downloaded. So check whether
	 * the receibed RCEB is such notification before assuming that the
	 * command has failed.
	 */
	if (FUNC2(i1480, i1480->evt_buf, NULL,
			     0, 0xfd, 0x0022) == 0) {
		/* Now wait for the actual RCEB for this command. */
		result = i1480->wait_init_done(i1480);
		if (result < 0)
			goto error;
		result = i1480->evt_result;
	}
	if (result != reply_size) {
		FUNC0(i1480->dev, "%s returned only %zu bytes, %zu expected\n",
			cmd_name, result, reply_size);
		result = -EINVAL;
		goto error;
	}
	/* Verify we got the right event in response */
	result = FUNC2(i1480, i1480->evt_buf, cmd_name, context,
				  expected_type, expected_event);
error:
	return result;
}