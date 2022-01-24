#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int* control; } ;
struct usb_line6_pod {int /*<<< orphan*/  line6; TYPE_1__ prog_data; } ;
struct ValueWait {scalar_t__ value; int /*<<< orphan*/  wait; } ;
typedef  int ssize_t ;
struct TYPE_6__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int ENODEV ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  POD_SYSEX_SYSTEMREQ ; 
 scalar_t__ POD_system_invalid ; 
 size_t POD_tuner ; 
 size_t SYSEX_DATA_OFS ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int const) ; 
 char* FUNC4 (struct usb_line6_pod*,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static ssize_t FUNC9(struct usb_line6_pod *pod, char *buf, int code, struct ValueWait *param, int tuner, int sign)
{
	char *sysex;
	int value;
	static const int size = 1;
	int retval = 0;
	FUNC0(wait, current);

	if (((pod->prog_data.control[POD_tuner] & 0x40) == 0) && tuner)
		return -ENODEV;

	/* send value request to tuner: */
	param->value = POD_system_invalid;
	sysex = FUNC4(pod, POD_SYSEX_SYSTEMREQ, size);
	if (!sysex)
		return 0;
	sysex[SYSEX_DATA_OFS] = code;
	FUNC3(&pod->line6, sysex, size);
	FUNC2(sysex);

	/* wait for tuner to respond: */
	FUNC1(&param->wait, &wait);
	current->state = TASK_INTERRUPTIBLE;

	while (param->value == POD_system_invalid) {
		if (FUNC7(current)) {
			retval = -ERESTARTSYS;
			break;
		} else
			FUNC6();
	}

	current->state = TASK_RUNNING;
	FUNC5(&param->wait, &wait);

	if (retval < 0)
		return retval;

	value = sign ? (int)(signed short)param->value : (int)(unsigned short)param->value;
	return FUNC8(buf, "%d\n", value);
}