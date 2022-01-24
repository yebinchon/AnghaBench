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
struct pcxhr_rmh {int* cmd; int cmd_len; } ;
struct pcxhr_mgr {unsigned int codec_speed; unsigned int sample_rate_real; int /*<<< orphan*/  use_clock_type; int /*<<< orphan*/  cur_clock_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ACCESS_IO_READ ; 
 int /*<<< orphan*/  CMD_ACCESS_IO_WRITE ; 
 scalar_t__ FUNC0 (struct pcxhr_mgr*) ; 
 int IO_NUM_REG_MUTE_OUT ; 
 int IO_NUM_SPEED_RATIO ; 
 int /*<<< orphan*/  PCXHR_FREQ_REG_MASK ; 
 int FUNC1 (struct pcxhr_mgr*,unsigned int,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcxhr_rmh*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pcxhr_mgr*,struct pcxhr_rmh*) ; 
 int FUNC4 (struct pcxhr_mgr*,int /*<<< orphan*/ ,unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int,...) ; 

__attribute__((used)) static int FUNC6(struct pcxhr_mgr *mgr,
			       unsigned int rate,
			       int *changed)
{
	unsigned int val, realfreq, speed;
	struct pcxhr_rmh rmh;
	int err;

	err = FUNC1(mgr, rate, &val, &realfreq);
	if (err)
		return err;

	/* codec speed modes */
	if (rate < 55000)
		speed = 0;	/* single speed */
	else if (rate < 100000)
		speed = 1;	/* dual speed */
	else
		speed = 2;	/* quad speed */
	if (mgr->codec_speed != speed) {
		FUNC2(&rmh, CMD_ACCESS_IO_WRITE); /* mute outputs */
		rmh.cmd[0] |= IO_NUM_REG_MUTE_OUT;
		if (FUNC0(mgr)) {
			rmh.cmd[1]  = 1;
			rmh.cmd_len = 2;
		}
		err = FUNC3(mgr, &rmh);
		if (err)
			return err;

		FUNC2(&rmh, CMD_ACCESS_IO_WRITE); /* set speed ratio */
		rmh.cmd[0] |= IO_NUM_SPEED_RATIO;
		rmh.cmd[1] = speed;
		rmh.cmd_len = 2;
		err = FUNC3(mgr, &rmh);
		if (err)
			return err;
	}
	/* set the new frequency */
	FUNC5("clock register : set %x\n", val);
	err = FUNC4(mgr, PCXHR_FREQ_REG_MASK,
					  val, changed);
	if (err)
		return err;

	mgr->sample_rate_real = realfreq;
	mgr->cur_clock_type = mgr->use_clock_type;

	/* unmute after codec speed modes */
	if (mgr->codec_speed != speed) {
		FUNC2(&rmh, CMD_ACCESS_IO_READ); /* unmute outputs */
		rmh.cmd[0] |= IO_NUM_REG_MUTE_OUT;
		if (FUNC0(mgr)) {
			rmh.cmd[1]  = 1;
			rmh.cmd_len = 2;
		}
		err = FUNC3(mgr, &rmh);
		if (err)
			return err;
		mgr->codec_speed = speed;	/* save new codec speed */
	}

	FUNC5("pcxhr_sub_set_clock to %dHz (realfreq=%d)\n",
		    rate, realfreq);
	return 0;
}