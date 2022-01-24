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
struct snd_soc_dapm_widget {scalar_t__ id; int power; int shift; int /*<<< orphan*/  reg; int /*<<< orphan*/  name; scalar_t__ invert; struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int /*<<< orphan*/  pop_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,unsigned int,unsigned int,int) ; 
 scalar_t__ snd_soc_dapm_hp ; 
 scalar_t__ snd_soc_dapm_input ; 
 scalar_t__ snd_soc_dapm_line ; 
 scalar_t__ snd_soc_dapm_mic ; 
 scalar_t__ snd_soc_dapm_output ; 
 scalar_t__ snd_soc_dapm_spk ; 
 unsigned int FUNC3 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_codec*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dapm_widget *widget)
{
	int change, power;
	unsigned int old, new;
	struct snd_soc_codec *codec = widget->codec;

	/* check for valid widgets */
	if (widget->reg < 0 || widget->id == snd_soc_dapm_input ||
		widget->id == snd_soc_dapm_output ||
		widget->id == snd_soc_dapm_hp ||
		widget->id == snd_soc_dapm_mic ||
		widget->id == snd_soc_dapm_line ||
		widget->id == snd_soc_dapm_spk)
		return 0;

	power = widget->power;
	if (widget->invert)
		power = (power ? 0:1);

	old = FUNC3(codec, widget->reg);
	new = (old & ~(0x1 << widget->shift)) | (power << widget->shift);

	change = old != new;
	if (change) {
		FUNC0(codec->pop_time, "pop test %s : %s in %d ms\n",
			widget->name, widget->power ? "on" : "off",
			codec->pop_time);
		FUNC4(codec, widget->reg, new);
		FUNC1(codec->pop_time);
	}
	FUNC2("reg %x old %x new %x change %d\n", widget->reg,
		 old, new, change);
	return change;
}