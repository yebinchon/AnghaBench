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
struct hda_codec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VENDOR_DSPIO_STATUS ; 
 int VENDOR_STATUS_DSPIO_OK ; 
 int VENDOR_STATUS_DSPIO_SCP_RESPONSE_QUEUE_EMPTY ; 
 int /*<<< orphan*/  WIDGET_DSP_CTRL ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct hda_codec *codec)
{
	int status;
	unsigned long timeout = jiffies + FUNC0(1000);

	do {
		status = FUNC2(codec, WIDGET_DSP_CTRL, 0,
						VENDOR_DSPIO_STATUS, 0);
		if ((status == VENDOR_STATUS_DSPIO_OK) ||
		    (status == VENDOR_STATUS_DSPIO_SCP_RESPONSE_QUEUE_EMPTY))
			break;
		FUNC1(1);
	} while (FUNC3(jiffies, timeout));
}