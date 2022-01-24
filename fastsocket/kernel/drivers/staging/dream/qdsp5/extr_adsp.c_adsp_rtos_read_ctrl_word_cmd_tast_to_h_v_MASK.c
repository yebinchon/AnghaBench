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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct msm_adsp_module {unsigned int name; int /*<<< orphan*/  driver_data; TYPE_1__* ops; int /*<<< orphan*/  num_events; } ;
struct adsp_info {unsigned int max_task_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* event ) (int /*<<< orphan*/ ,unsigned int,unsigned int,void (*) (void*,size_t)) ;} ;

/* Variables and functions */
 int ADSP_RTOS_READ_CTRL_WORD_MSG_ID_M ; 
 int ADSP_RTOS_READ_CTRL_WORD_TASK_ID_M ; 
 scalar_t__ MSM_AD5_BASE ; 
 scalar_t__ QDSP_RAMC_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct adsp_info*,unsigned int) ; 
 struct msm_adsp_module* FUNC1 (struct adsp_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 void FUNC3 (void*,size_t) ; 
 void FUNC4 (void*,size_t) ; 
 int* read_event_addr ; 
 int read_event_size ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int,unsigned int,void (*) (void*,size_t)) ; 

__attribute__((used)) static int FUNC6(
	struct adsp_info *info, void *dsp_addr)
{
	struct msm_adsp_module *module;
	unsigned rtos_task_id;
	unsigned msg_id;
	unsigned msg_length;
	void (*func)(void *, size_t);

	if (dsp_addr >= (void *)(MSM_AD5_BASE + QDSP_RAMC_OFFSET)) {
		uint32_t *dsp_addr32 = dsp_addr;
		uint32_t tmp = *dsp_addr32++;
		rtos_task_id = (tmp & ADSP_RTOS_READ_CTRL_WORD_TASK_ID_M) >> 8;
		msg_id = (tmp & ADSP_RTOS_READ_CTRL_WORD_MSG_ID_M);
		read_event_size = tmp >> 16;
		read_event_addr = dsp_addr32;
		msg_length = read_event_size * sizeof(uint32_t);
		func = read_event_32;
	} else {
		uint16_t *dsp_addr16 = dsp_addr;
		uint16_t tmp = *dsp_addr16++;
		rtos_task_id = (tmp & ADSP_RTOS_READ_CTRL_WORD_TASK_ID_M) >> 8;
		msg_id = tmp & ADSP_RTOS_READ_CTRL_WORD_MSG_ID_M;
		read_event_size = *dsp_addr16++;
		read_event_addr = dsp_addr16;
		msg_length = read_event_size * sizeof(uint16_t);
		func = read_event_16;
	}

	if (rtos_task_id > info->max_task_id) {
		FUNC2("adsp: bogus task id %d\n", rtos_task_id);
		return 0;
	}
	module = FUNC1(info,
					FUNC0(info, rtos_task_id));

	if (!module) {
		FUNC2("adsp: no module for task id %d\n", rtos_task_id);
		return 0;
	}

	module->num_events++;

	if (!module->ops) {
		FUNC2("adsp: module %s is not open\n", module->name);
		return 0;
	}

	module->ops->event(module->driver_data, msg_id, msg_length, func);
	return 0;
}