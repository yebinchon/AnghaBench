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
 int EIO ; 
 int /*<<< orphan*/  VENDOR_DSPIO_SCP_POST_READ_DATA ; 
 int /*<<< orphan*/  VENDOR_DSPIO_SCP_READ_DATA ; 
 int /*<<< orphan*/  VENDOR_DSPIO_STATUS ; 
 int VENDOR_STATUS_DSPIO_SCP_RESPONSE_QUEUE_EMPTY ; 
 int /*<<< orphan*/  WIDGET_DSP_CTRL ; 
 int FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct hda_codec *codec, unsigned int *data)
{
	int status;

	status = FUNC0(codec, VENDOR_DSPIO_SCP_POST_READ_DATA, 0);
	if (status == -EIO)
		return status;

	status = FUNC0(codec, VENDOR_DSPIO_STATUS, 0);
	if (status == -EIO ||
	    status == VENDOR_STATUS_DSPIO_SCP_RESPONSE_QUEUE_EMPTY)
		return -EIO;

	*data = FUNC1(codec, WIDGET_DSP_CTRL, 0,
				   VENDOR_DSPIO_SCP_READ_DATA, 0);

	return 0;
}