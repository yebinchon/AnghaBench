#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {struct snd_soc_codec* disc_data; } ;
struct snd_soc_codec {TYPE_2__* socdev; int /*<<< orphan*/  control_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* receive_buf ) (struct tty_struct*,unsigned char const*,char*,int) ;} ;
struct TYPE_5__ {TYPE_1__* card; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMS_DELTA_LATCH2_MODEM_CODEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ams_delta_hook_switch ; 
 int /*<<< orphan*/  ams_delta_hook_switch_pins ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ams_delta_lock ; 
 int /*<<< orphan*/  ams_delta_muted ; 
 int cx81801_cmd_pending ; 
 int /*<<< orphan*/  cx81801_timeout ; 
 int /*<<< orphan*/  cx81801_timer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct tty_struct*,unsigned char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct tty_struct*,unsigned char const*,char*,int) ; 
 TYPE_3__ v253_ops ; 

__attribute__((used)) static void FUNC11(struct tty_struct *tty,
				const unsigned char *cp, char *fp, int count)
{
	struct snd_soc_codec *codec = tty->disc_data;
	const unsigned char *c;
	int apply, ret;

	if (!codec->control_data) {
		/* First modem response, complete setup procedure */

		/* Initialize timer used for config pulse generation */
		FUNC5(&cx81801_timer, cx81801_timeout, 0);

		v253_ops.receive_buf(tty, cp, fp, count);

		/* Link hook switch to DAPM pins */
		ret = FUNC6(&ams_delta_hook_switch,
					FUNC0(ams_delta_hook_switch_pins),
					ams_delta_hook_switch_pins);
		if (ret)
			FUNC2(codec->socdev->card->dev,
				"Failed to link hook switch to DAPM pins, "
				"will continue with hook switch unlinked.\n");

		return;
	}

	v253_ops.receive_buf(tty, cp, fp, count);

	for (c = &cp[count - 1]; c >= cp; c--) {
		if (*c != '\r')
			continue;
		/* Complete modem response received, apply config to codec */

		FUNC7(&ams_delta_lock);
		FUNC3(&cx81801_timer, jiffies + FUNC4(150));
		apply = !ams_delta_muted && !cx81801_cmd_pending;
		cx81801_cmd_pending = 1;
		FUNC8(&ams_delta_lock);

		/* Apply config pulse by connecting the codec to the modem
		 * if not already done */
		if (apply)
			FUNC1(AMS_DELTA_LATCH2_MODEM_CODEC,
						AMS_DELTA_LATCH2_MODEM_CODEC);
		break;
	}
}