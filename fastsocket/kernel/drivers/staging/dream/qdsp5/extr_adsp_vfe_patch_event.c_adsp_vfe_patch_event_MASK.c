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
struct adsp_event {int msg_id; } ;

/* Variables and functions */
#define  VFE_MSG_OP1 131 
#define  VFE_MSG_OP2 130 
#define  VFE_MSG_STATS_AF 129 
#define  VFE_MSG_STATS_WB_EXP 128 
 int FUNC0 (struct msm_adsp_module*,struct adsp_event*) ; 
 int FUNC1 (struct msm_adsp_module*,struct adsp_event*) ; 

int FUNC2(struct msm_adsp_module *module,
			struct adsp_event *event)
{
	switch(event->msg_id) {
	case VFE_MSG_OP1:
	case VFE_MSG_OP2:
		return FUNC1(module, event);
	case VFE_MSG_STATS_AF:
	case VFE_MSG_STATS_WB_EXP:
		return FUNC0(module, event);
	default:
		break;
	}

	return 0;
}