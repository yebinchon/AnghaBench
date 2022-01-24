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
typedef  int u16 ;
typedef  int /*<<< orphan*/  flush_cmd ;

/* Variables and functions */
 int AUDPP_CMD_DEC_CTRL ; 
 int AUDPP_CMD_DEC_CTRL_LEN ; 
 int AUDPP_CMD_FLUSH_V ; 
 int AUDPP_CMD_UPDATE_V ; 
 unsigned int CH_COUNT ; 
 int EINVAL ; 
 int FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 

int FUNC2(unsigned id)
{
	u16 flush_cmd[AUDPP_CMD_DEC_CTRL_LEN / sizeof(unsigned short)];

	if (id >= CH_COUNT)
		return -EINVAL;

	FUNC1(flush_cmd, 0, sizeof(flush_cmd));

	flush_cmd[0] = AUDPP_CMD_DEC_CTRL;
	flush_cmd[1 + id] = AUDPP_CMD_UPDATE_V | AUDPP_CMD_FLUSH_V;

	return FUNC0(flush_cmd, sizeof(flush_cmd));
}