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
struct dlfb_data {char* edid; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct dlfb_data *dev_info)
{
	int i;
	int ret;
	char rbuf[2];

	for (i = 0; i < 128; i++) {
		ret =
		    FUNC0(dev_info->udev,
				    FUNC1(dev_info->udev, 0), (0x02),
				    (0x80 | (0x02 << 5)), i << 8, 0xA1, rbuf, 2,
				    0);
		/*printk("ret control msg edid %d: %d [%d]\n",i, ret, rbuf[1]); */
		dev_info->edid[i] = rbuf[1];
	}

}