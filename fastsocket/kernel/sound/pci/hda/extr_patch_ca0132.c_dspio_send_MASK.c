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
 int VENDOR_STATUS_DSPIO_BUSY ; 
 int /*<<< orphan*/  WIDGET_DSP_CTRL ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct hda_codec *codec, unsigned int reg,
		      unsigned int data)
{
	int res;
	unsigned long timeout = jiffies + FUNC0(1000);

	/* send bits of data specified by reg to dsp */
	do {
		res = FUNC2(codec, WIDGET_DSP_CTRL, 0, reg, data);
		if ((res >= 0) && (res != VENDOR_STATUS_DSPIO_BUSY))
			return res;
		FUNC1(20);
	} while (FUNC3(jiffies, timeout));

	return -EIO;
}