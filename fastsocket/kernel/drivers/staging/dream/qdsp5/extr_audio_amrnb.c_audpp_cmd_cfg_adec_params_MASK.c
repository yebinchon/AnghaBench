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
struct TYPE_2__ {int input_sampling_frequency; int /*<<< orphan*/  dec_id; int /*<<< orphan*/  length; int /*<<< orphan*/  cmd_id; } ;
struct audpp_cmd_cfg_adec_params_amrnb {int /*<<< orphan*/  stereo_cfg; TYPE_1__ common; } ;
struct audio {int /*<<< orphan*/  dec_id; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  AUDPP_CMD_CFG_ADEC_PARAMS ; 
 int /*<<< orphan*/  AUDPP_CMD_CFG_ADEC_PARAMS_V13K_LEN ; 
 int /*<<< orphan*/  AUDPP_CMD_PCM_INTF_MONO_V ; 
 int /*<<< orphan*/  FUNC0 (struct audpp_cmd_cfg_adec_params_amrnb*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct audpp_cmd_cfg_adec_params_amrnb*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct audio *audio)
{
	struct audpp_cmd_cfg_adec_params_amrnb cmd;

	FUNC1(&cmd, 0, sizeof(cmd));
	cmd.common.cmd_id = AUDPP_CMD_CFG_ADEC_PARAMS;
	cmd.common.length = AUDPP_CMD_CFG_ADEC_PARAMS_V13K_LEN;
	cmd.common.dec_id = audio->dec_id;
	cmd.common.input_sampling_frequency = 8000;
	cmd.stereo_cfg = AUDPP_CMD_PCM_INTF_MONO_V;

	FUNC0(&cmd, sizeof(cmd));
}