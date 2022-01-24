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
typedef  int u16 ;
struct wm8903_priv {int class_w_users; } ;
struct snd_soc_dapm_widget {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {struct i2c_client* control_data; struct wm8903_priv* private_data; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM8903_CLASS_W_0 ; 
 int WM8903_CP_DYN_FREQ ; 
 int WM8903_CP_DYN_V ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 struct snd_soc_dapm_widget* FUNC1 (struct snd_kcontrol*) ; 
 int FUNC2 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 
 int FUNC3 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
			      struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_dapm_widget *widget = FUNC1(kcontrol);
	struct snd_soc_codec *codec = widget->codec;
	struct wm8903_priv *wm8903 = codec->private_data;
	struct i2c_client *i2c = codec->control_data;
	u16 reg;
	int ret;

	reg = FUNC3(codec, WM8903_CLASS_W_0);

	/* Turn it off if we're about to enable bypass */
	if (ucontrol->value.integer.value[0]) {
		if (wm8903->class_w_users == 0) {
			FUNC0(&i2c->dev, "Disabling Class W\n");
			FUNC4(codec, WM8903_CLASS_W_0, reg &
				     ~(WM8903_CP_DYN_FREQ | WM8903_CP_DYN_V));
		}
		wm8903->class_w_users++;
	}

	/* Implement the change */
	ret = FUNC2(kcontrol, ucontrol);

	/* If we've just disabled the last bypass path turn Class W on */
	if (!ucontrol->value.integer.value[0]) {
		if (wm8903->class_w_users == 1) {
			FUNC0(&i2c->dev, "Enabling Class W\n");
			FUNC4(codec, WM8903_CLASS_W_0, reg |
				     WM8903_CP_DYN_FREQ | WM8903_CP_DYN_V);
		}
		wm8903->class_w_users--;
	}

	FUNC0(&i2c->dev, "Bypass use count now %d\n",
		wm8903->class_w_users);

	return ret;
}