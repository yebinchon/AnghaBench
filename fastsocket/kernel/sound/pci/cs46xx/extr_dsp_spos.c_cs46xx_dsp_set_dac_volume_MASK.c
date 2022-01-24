#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* u16 ;
struct snd_cs46xx {int /*<<< orphan*/  spos_mutex; struct dsp_spos_instance* dsp_spos_instance; } ;
struct dsp_spos_instance {void* dac_volume_right; void* dac_volume_left; struct dsp_scb_descriptor* the_null_scb; TYPE_2__* rear_mix_scb; TYPE_1__* master_mix_scb; } ;
struct dsp_scb_descriptor {struct dsp_scb_descriptor* next_scb_ptr; } ;
struct TYPE_4__ {struct dsp_scb_descriptor* sub_list_ptr; } ;
struct TYPE_3__ {struct dsp_scb_descriptor* sub_list_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_cs46xx*,struct dsp_scb_descriptor*,void*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3 (struct snd_cs46xx * chip, u16 left, u16 right)
{
	struct dsp_spos_instance * ins = chip->dsp_spos_instance;
	struct dsp_scb_descriptor * scb; 

	FUNC1(&chip->spos_mutex);
	
	/* main output */
	scb = ins->master_mix_scb->sub_list_ptr;
	while (scb != ins->the_null_scb) {
		FUNC0 (chip,scb,left,right);
		scb = scb->next_scb_ptr;
	}

	/* rear output */
	scb = ins->rear_mix_scb->sub_list_ptr;
	while (scb != ins->the_null_scb) {
		FUNC0 (chip,scb,left,right);
		scb = scb->next_scb_ptr;
	}

	ins->dac_volume_left = left;
	ins->dac_volume_right = right;

	FUNC2(&chip->spos_mutex);

	return 0;
}