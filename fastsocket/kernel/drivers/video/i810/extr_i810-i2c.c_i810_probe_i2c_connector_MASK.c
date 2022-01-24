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
typedef  int /*<<< orphan*/  u8 ;
struct i810fb_par {int ddc_num; TYPE_1__* chan; } ;
struct fb_info {int /*<<< orphan*/  device; struct i810fb_par* par; } ;
struct TYPE_2__ {int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  EDID_LENGTH ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct fb_info *info, u8 **out_edid, int conn)
{
	struct i810fb_par *par = info->par;
        u8 *edid = NULL;

	FUNC0("i810-i2c: Probe DDC%i Bus\n", conn+1);
	if (conn < par->ddc_num) {
		edid = FUNC1(&par->chan[conn].adapter);
	} else {
		const u8 *e = FUNC2(info->device);

		if (e != NULL) {
			FUNC0("i810-i2c: Getting EDID from BIOS\n");
			edid = FUNC3(e, EDID_LENGTH, GFP_KERNEL);
		}
	}

	*out_edid = edid;

        return (edid) ? 0 : 1;
}