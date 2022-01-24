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
struct snd_cs46xx {int dummy; } ;
struct dsp_scb_descriptor {int /*<<< orphan*/  parent_scb_ptr; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_cs46xx*,struct dsp_scb_descriptor*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_cs46xx*,struct dsp_scb_descriptor*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

int FUNC3(struct snd_cs46xx *chip, struct dsp_scb_descriptor * src)
{
	if (FUNC2(!src->parent_scb_ptr))
		return -EINVAL;

	/* mute SCB */
	FUNC1 (chip,src,0,0);

	FUNC0 (chip,src);

	return 0;
}