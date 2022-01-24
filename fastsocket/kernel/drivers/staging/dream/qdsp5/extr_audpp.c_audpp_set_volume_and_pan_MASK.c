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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int AUDPP_CMD_CFG_OBJECT_PARAMS ; 
 int AUDPP_CMD_CFG_OBJ_UPDATE ; 
 int AUDPP_CMD_VOLUME_PAN ; 
 int EINVAL ; 
 int FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 

int FUNC2(unsigned id, unsigned volume, int pan)
{
	/* cmd, obj_cfg[7], cmd_type, volume, pan */
	uint16_t cmd[11];

	if (id > 6)
		return -EINVAL;

	FUNC1(cmd, 0, sizeof(cmd));
	cmd[0] = AUDPP_CMD_CFG_OBJECT_PARAMS;
	cmd[1 + id] = AUDPP_CMD_CFG_OBJ_UPDATE;
	cmd[8] = AUDPP_CMD_VOLUME_PAN;
	cmd[9] = volume;
	cmd[10] = pan;

	return FUNC0(cmd, sizeof(cmd));
}