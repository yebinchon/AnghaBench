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
 unsigned int EIO ; 
 int /*<<< orphan*/  VENDOR_DSPIO_DSP_INIT ; 
 unsigned int FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(struct hda_codec *codec)
{
	unsigned int res;
	int retry = 20;

	FUNC1("dsp_reset\n");
	do {
		res = FUNC0(codec, VENDOR_DSPIO_DSP_INIT, 0);
		retry--;
	} while (res == -EIO && retry);

	if (!retry) {
		FUNC1("dsp_reset timeout\n");
		return -EIO;
	}

	return 0;
}