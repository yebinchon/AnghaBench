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
struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int /*<<< orphan*/  chipio_mutex; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  VENDOR_DSPIO_SCP_WRITE_DATA_HIGH ; 
 int /*<<< orphan*/  VENDOR_DSPIO_SCP_WRITE_DATA_LOW ; 
 int /*<<< orphan*/  VENDOR_DSPIO_STATUS ; 
 int VENDOR_STATUS_DSPIO_SCP_COMMAND_QUEUE_FULL ; 
 int /*<<< orphan*/  WIDGET_DSP_CTRL ; 
 int FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct hda_codec *codec, unsigned int scp_data)
{
	struct ca0132_spec *spec = codec->spec;
	int status;

	FUNC1(codec);

	FUNC2(&spec->chipio_mutex);
	status = FUNC0(codec, VENDOR_DSPIO_SCP_WRITE_DATA_LOW,
			    scp_data & 0xffff);
	if (status < 0)
		goto error;

	status = FUNC0(codec, VENDOR_DSPIO_SCP_WRITE_DATA_HIGH,
				    scp_data >> 16);
	if (status < 0)
		goto error;

	/* OK, now check if the write itself has executed*/
	status = FUNC4(codec, WIDGET_DSP_CTRL, 0,
				    VENDOR_DSPIO_STATUS, 0);
error:
	FUNC3(&spec->chipio_mutex);

	return (status == VENDOR_STATUS_DSPIO_SCP_COMMAND_QUEUE_FULL) ?
			-EIO : 0;
}