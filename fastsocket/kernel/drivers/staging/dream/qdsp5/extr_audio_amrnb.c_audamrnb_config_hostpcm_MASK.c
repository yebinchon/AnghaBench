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
struct audplay_cmd_hpcm_buf_cfg {int hostpcm_config; int feedback_frequency; scalar_t__ partition_number; scalar_t__ byte_swap; int /*<<< orphan*/  max_buffers; int /*<<< orphan*/  cmd_id; } ;
struct audio {int /*<<< orphan*/  pcm_buf_count; } ;
typedef  int /*<<< orphan*/  cfg_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  AUDPLAY_CMD_HPCM_BUF_CFG ; 
 int /*<<< orphan*/  FUNC0 (struct audio*,struct audplay_cmd_hpcm_buf_cfg*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(struct audio *audio)
{
	struct audplay_cmd_hpcm_buf_cfg cfg_cmd;

	FUNC1("audamrnb_config_hostpcm()\n");
	cfg_cmd.cmd_id = AUDPLAY_CMD_HPCM_BUF_CFG;
	cfg_cmd.max_buffers = audio->pcm_buf_count;
	cfg_cmd.byte_swap = 0;
	cfg_cmd.hostpcm_config = (0x8000) | (0x4000);
	cfg_cmd.feedback_frequency = 1;
	cfg_cmd.partition_number = 0;
	(void)FUNC0(audio, &cfg_cmd, sizeof(cfg_cmd));

}