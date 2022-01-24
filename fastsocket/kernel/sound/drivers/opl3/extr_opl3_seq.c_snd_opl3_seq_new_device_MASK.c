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
struct snd_seq_device {int dummy; } ;
struct TYPE_2__ {unsigned long data; int /*<<< orphan*/  function; } ;
struct snd_opl3 {int seq_client; int hardware; scalar_t__ sys_timer_status; int /*<<< orphan*/  sys_timer_lock; TYPE_1__ tlist; int /*<<< orphan*/  seq_dev_num; int /*<<< orphan*/  card; int /*<<< orphan*/  voice_lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int OPL3_HW_MASK ; 
 scalar_t__ FUNC0 (struct snd_seq_device*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_opl3*,char*) ; 
 int FUNC3 (struct snd_opl3*) ; 
 int /*<<< orphan*/  snd_opl3_timer_func ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 

__attribute__((used)) static int FUNC8(struct snd_seq_device *dev)
{
	struct snd_opl3 *opl3;
	int client, err;
	char name[32];
	int opl_ver;

	opl3 = *(struct snd_opl3 **)FUNC0(dev);
	if (opl3 == NULL)
		return -EINVAL;

	FUNC6(&opl3->voice_lock);

	opl3->seq_client = -1;

	/* allocate new client */
	opl_ver = (opl3->hardware & OPL3_HW_MASK) >> 8;
	FUNC7(name, "OPL%i FM synth", opl_ver);
	client = opl3->seq_client =
		FUNC4(opl3->card, opl3->seq_dev_num,
					     name);
	if (client < 0)
		return client;

	if ((err = FUNC3(opl3)) < 0) {
		FUNC5(client);
		opl3->seq_client = -1;
		return err;
	}

	/* setup system timer */
	FUNC1(&opl3->tlist);
	opl3->tlist.function = snd_opl3_timer_func;
	opl3->tlist.data = (unsigned long) opl3;
	FUNC6(&opl3->sys_timer_lock);
	opl3->sys_timer_status = 0;

#ifdef CONFIG_SND_SEQUENCER_OSS
	snd_opl3_init_seq_oss(opl3, name);
#endif
	return 0;
}