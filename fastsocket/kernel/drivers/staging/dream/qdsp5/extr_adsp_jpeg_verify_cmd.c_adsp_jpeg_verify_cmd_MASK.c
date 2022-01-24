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
struct msm_adsp_module {int dummy; } ;

/* Variables and functions */
#define  QDSP_uPJpegActionCmdQueue 129 
#define  QDSP_uPJpegCfgCmdQueue 128 
 int FUNC0 (struct msm_adsp_module*,void*,size_t) ; 
 int FUNC1 (struct msm_adsp_module*,void*,size_t) ; 

int FUNC2(struct msm_adsp_module *module,
			 unsigned int queue_id, void *cmd_data,
			 size_t cmd_size)
{
	switch(queue_id) {
	case QDSP_uPJpegCfgCmdQueue:
		return FUNC1(module, cmd_data, cmd_size);
	case QDSP_uPJpegActionCmdQueue:
		return FUNC0(module, cmd_data, cmd_size);
	default:
		return -1;
	}
}