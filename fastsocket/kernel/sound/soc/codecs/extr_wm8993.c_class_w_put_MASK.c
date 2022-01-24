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
struct wm8993_priv {int class_w_users; } ;
struct snd_soc_dapm_widget {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int /*<<< orphan*/  dev; struct wm8993_priv* private_data; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM8993_CLASS_W_0 ; 
 int WM8993_CP_DYN_FREQ ; 
 int WM8993_CP_DYN_V ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 struct snd_soc_dapm_widget* FUNC1 (struct snd_kcontrol*) ; 
 int FUNC2 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_codec*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
		       struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_dapm_widget *widget = FUNC1(kcontrol);
	struct snd_soc_codec *codec = widget->codec;
	struct wm8993_priv *wm8993 = codec->private_data;
	int ret;

	/* Turn it off if we're using the main output mixer */
	if (ucontrol->value.integer.value[0] == 0) {
		if (wm8993->class_w_users == 0) {
			FUNC0(codec->dev, "Disabling Class W\n");
			FUNC3(codec, WM8993_CLASS_W_0,
					    WM8993_CP_DYN_FREQ |
					    WM8993_CP_DYN_V,
					    0);
		}
		wm8993->class_w_users++;
	}

	/* Implement the change */
	ret = FUNC2(kcontrol, ucontrol);

	/* Enable it if we're using the direct DAC path */
	if (ucontrol->value.integer.value[0] == 1) {
		if (wm8993->class_w_users == 1) {
			FUNC0(codec->dev, "Enabling Class W\n");
			FUNC3(codec, WM8993_CLASS_W_0,
					    WM8993_CP_DYN_FREQ |
					    WM8993_CP_DYN_V,
					    WM8993_CP_DYN_FREQ |
					    WM8993_CP_DYN_V);
		}
		wm8993->class_w_users--;
	}

	FUNC0(codec->dev, "Indirect DAC use count now %d\n",
		wm8993->class_w_users);

	return ret;
}