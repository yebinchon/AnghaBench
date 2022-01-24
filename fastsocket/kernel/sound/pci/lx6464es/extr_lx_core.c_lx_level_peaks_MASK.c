#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_3__ {int* stat; int /*<<< orphan*/ * cmd; } ;
struct lx6464es {int /*<<< orphan*/  msg_lock; TYPE_1__ rmh; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_12_GET_PEAK ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct lx6464es*,TYPE_1__*) ; 
 scalar_t__* peak_map ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct lx6464es *chip, int is_capture, int channels,
		   u32 *r_levels)
{
	int err = 0;
	unsigned long flags;
	int i;
	FUNC3(&chip->msg_lock, flags);

	for (i = 0; i < channels; i += 4) {
		u32 s0, s1, s2, s3;

		FUNC1(&chip->rmh, CMD_12_GET_PEAK);
		chip->rmh.cmd[0] |= FUNC0(is_capture, i);

		err = FUNC2(chip, &chip->rmh);

		if (err == 0) {
			s0 = peak_map[chip->rmh.stat[0] & 0x0F];
			s1 = peak_map[(chip->rmh.stat[0] >>  4) & 0xf];
			s2 = peak_map[(chip->rmh.stat[0] >>  8) & 0xf];
			s3 = peak_map[(chip->rmh.stat[0] >>  12) & 0xf];
		} else
			s0 = s1 = s2 = s3 = 0;

		r_levels[0] = s0;
		r_levels[1] = s1;
		r_levels[2] = s2;
		r_levels[3] = s3;

		r_levels += 4;
	}

	FUNC4(&chip->msg_lock, flags);
	return err;
}