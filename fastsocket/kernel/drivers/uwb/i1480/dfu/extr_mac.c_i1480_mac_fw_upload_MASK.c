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
struct TYPE_2__ {int /*<<< orphan*/  bEventContext; int /*<<< orphan*/  wEvent; int /*<<< orphan*/  bEventType; } ;
struct i1480_rceb {TYPE_1__ rceb; } ;
struct i1480 {int (* rc_setup ) (struct i1480*) ;int (* wait_init_done ) (struct i1480*) ;int evt_result; int /*<<< orphan*/  mac_fw_name; int /*<<< orphan*/  dev; int /*<<< orphan*/  mac_fw_name_deprecate; scalar_t__ evt_buf; } ;

/* Variables and functions */
 int EIO ; 
 int ENOENT ; 
 int FUNC0 (struct i1480*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i1480_CET_VS1 ; 
 int /*<<< orphan*/  i1480_EVT_RM_INIT_DONE ; 
 int FUNC3 (struct i1480*) ; 
 int FUNC4 (struct i1480*) ; 
 scalar_t__ FUNC5 (struct i1480*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct i1480*) ; 
 int FUNC8 (struct i1480*) ; 

int FUNC9(struct i1480 *i1480)
{
	int result = 0, deprecated_name = 0;
	struct i1480_rceb *rcebe = (void *) i1480->evt_buf;

	result = FUNC0(i1480, i1480->mac_fw_name, "MAC");
	if (result == -ENOENT) {
		result = FUNC0(i1480, i1480->mac_fw_name_deprecate,
					 "MAC");
		deprecated_name = 1;
	}
	if (result < 0)
		return result;
	if (deprecated_name == 1)
		FUNC2(i1480->dev,
			 "WARNING: firmware file name %s is deprecated, "
			 "please rename to %s\n",
			 i1480->mac_fw_name_deprecate, i1480->mac_fw_name);
	result = FUNC4(i1480);
	if (result < 0)
		goto error_fw_not_running;
	result = i1480->rc_setup ? i1480->rc_setup(i1480) : 0;
	if (result < 0) {
		FUNC1(i1480->dev, "Cannot setup after MAC fw upload: %d\n",
			result);
		goto error_setup;
	}
	result = i1480->wait_init_done(i1480);	/* wait init'on */
	if (result < 0) {
		FUNC1(i1480->dev, "MAC fw '%s': Initialization timed out "
			"(%d)\n", i1480->mac_fw_name, result);
		goto error_init_timeout;
	}
	/* verify we got the right initialization done event */
	if (i1480->evt_result != sizeof(*rcebe)) {
		FUNC1(i1480->dev, "MAC fw '%s': initialization event returns "
			"wrong size (%zu bytes vs %zu needed)\n",
			i1480->mac_fw_name, i1480->evt_result, sizeof(*rcebe));
		goto error_size;
	}
	result = -EIO;
	if (FUNC5(i1480, &rcebe->rceb, NULL, 0, i1480_CET_VS1,
			     i1480_EVT_RM_INIT_DONE) < 0) {
		FUNC1(i1480->dev, "wrong initialization event 0x%02x/%04x/%02x "
			"received; expected 0x%02x/%04x/00\n",
			rcebe->rceb.bEventType, FUNC6(rcebe->rceb.wEvent),
			rcebe->rceb.bEventContext, i1480_CET_VS1,
			i1480_EVT_RM_INIT_DONE);
		goto error_init_timeout;
	}
	result = FUNC3(i1480);
	if (result < 0)
		FUNC1(i1480->dev, "MAC fw '%s': MBOA reset failed (%d)\n",
			i1480->mac_fw_name, result);
error_fw_not_running:
error_init_timeout:
error_size:
error_setup:
	return result;
}