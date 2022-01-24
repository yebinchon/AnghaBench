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
struct soc_mixer_control {unsigned int reg; unsigned int shift; int max; unsigned int invert; } ;
struct snd_soc_dapm_widget {int muted; int saved_value; int /*<<< orphan*/  codec; scalar_t__ num_kcontrols; struct snd_kcontrol_new* kcontrols; } ;
struct snd_kcontrol_new {scalar_t__ private_value; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,unsigned int,int) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dapm_widget *widget, int power)
{
	const struct snd_kcontrol_new *k = widget->kcontrols;

	if (widget->muted && !power)
		return 0;
	if (!widget->muted && power)
		return 0;

	if (widget->num_kcontrols && k) {
		struct soc_mixer_control *mc =
			(struct soc_mixer_control *)k->private_value;
		unsigned int reg = mc->reg;
		unsigned int shift = mc->shift;
		int max = mc->max;
		unsigned int mask = (1 << FUNC0(max)) - 1;
		unsigned int invert = mc->invert;

		if (power) {
			int i;
			/* power up has happended, increase volume to last level */
			if (invert) {
				for (i = max; i > widget->saved_value; i--)
					FUNC2(widget->codec, reg, mask, i);
			} else {
				for (i = 0; i < widget->saved_value; i++)
					FUNC2(widget->codec, reg, mask, i);
			}
			widget->muted = 0;
		} else {
			/* power down is about to occur, decrease volume to mute */
			int val = FUNC1(widget->codec, reg);
			int i = widget->saved_value = (val >> shift) & mask;
			if (invert) {
				for (; i < mask; i++)
					FUNC2(widget->codec, reg, mask, i);
			} else {
				for (; i > 0; i--)
					FUNC2(widget->codec, reg, mask, i);
			}
			widget->muted = 1;
		}
	}
	return 0;
}