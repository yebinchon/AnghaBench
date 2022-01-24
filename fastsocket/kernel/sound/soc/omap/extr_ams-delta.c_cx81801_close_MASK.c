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
struct tty_struct {struct snd_soc_codec* disc_data; } ;
struct snd_soc_codec {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  pins; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* close ) (struct tty_struct*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__ ams_delta_hook_switch ; 
 int /*<<< orphan*/  cx81801_timer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_codec*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_codec*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_codec*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 
 TYPE_1__ v253_ops ; 

__attribute__((used)) static void FUNC6(struct tty_struct *tty)
{
	struct snd_soc_codec *codec = tty->disc_data;

	FUNC1(&cx81801_timer);

	v253_ops.close(tty);

	/* Prevent the hook switch from further changing the DAPM pins */
	FUNC0(&ams_delta_hook_switch.pins);

	/* Revert back to default audio input/output constellation */
	FUNC2(codec, "Mouthpiece");
	FUNC3(codec, "Earpiece");
	FUNC3(codec, "Microphone");
	FUNC2(codec, "Speaker");
	FUNC2(codec, "AGCIN");
	FUNC4(codec);
}