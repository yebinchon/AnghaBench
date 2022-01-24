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
struct audpre_cmd_iir_config_type {int /*<<< orphan*/  active_flag; int /*<<< orphan*/  cmd_id; int /*<<< orphan*/  iir_params; int /*<<< orphan*/  num_bands; } ;
struct TYPE_2__ {int /*<<< orphan*/  iir_params; int /*<<< orphan*/  num_bands; } ;
struct audio_in {TYPE_1__ iir; scalar_t__ iir_enable; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  AUDPREPROC_CMD_CFG_IIR_TUNING_FILTER_PARAMS ; 
 int /*<<< orphan*/  AUDPREPROC_CMD_IIR_ACTIVE_FLAG_DIS ; 
 int /*<<< orphan*/  AUDPREPROC_CMD_IIR_ACTIVE_FLAG_ENA ; 
 int FUNC0 (struct audio_in*,struct audpre_cmd_iir_config_type*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct audpre_cmd_iir_config_type*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct audio_in *audio)
{
	struct audpre_cmd_iir_config_type cmd;

	FUNC2(&cmd, 0, sizeof(cmd));
	cmd.cmd_id = AUDPREPROC_CMD_CFG_IIR_TUNING_FILTER_PARAMS;

	if (audio->iir_enable) {
		cmd.active_flag = AUDPREPROC_CMD_IIR_ACTIVE_FLAG_ENA;
		cmd.num_bands = audio->iir.num_bands;
		FUNC1(&cmd.iir_params, &audio->iir.iir_params,
			sizeof(audio->iir.iir_params));
	} else {
		cmd.active_flag = AUDPREPROC_CMD_IIR_ACTIVE_FLAG_DIS;
	}
#if DEBUG
	pr_info("cmd_id = 0x%04x\n", cmd.cmd_id);
	pr_info("active_flag = 0x%04x\n", cmd.active_flag);
#endif
	return FUNC0(audio, &cmd, sizeof(cmd));
}