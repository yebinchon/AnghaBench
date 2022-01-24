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
typedef  int u32 ;
struct mipid_device {TYPE_1__* spi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIPID_CMD_READ_DISP_STATUS ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mipid_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(struct mipid_device *md)
{
	u32 disp_status;
	int enabled;

	FUNC2(md, MIPID_CMD_READ_DISP_STATUS, (u8 *)&disp_status, 4);
	disp_status = FUNC0(disp_status);
	enabled = (disp_status & (1 << 17)) && (disp_status & (1 << 10));
	FUNC1(&md->spi->dev,
		"LCD panel %senabled by bootloader (status 0x%04x)\n",
		enabled ? "" : "not ", disp_status);
	return enabled;
}