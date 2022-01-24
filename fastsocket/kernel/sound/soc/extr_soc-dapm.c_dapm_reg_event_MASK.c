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
struct snd_soc_dapm_widget {unsigned int on_val; unsigned int off_val; int reg; int mask; int shift; int /*<<< orphan*/  codec; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,unsigned int) ; 

int FUNC2(struct snd_soc_dapm_widget *w,
		   struct snd_kcontrol *kcontrol, int event)
{
	unsigned int val;

	if (FUNC0(event))
		val = w->on_val;
	else
		val = w->off_val;

	FUNC1(w->codec, -(w->reg + 1),
			    w->mask << w->shift, val << w->shift);

	return 0;
}