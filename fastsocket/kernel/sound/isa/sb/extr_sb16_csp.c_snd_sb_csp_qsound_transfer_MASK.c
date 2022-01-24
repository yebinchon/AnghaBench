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
struct snd_sb_csp {int running; int qpos_left; int qpos_right; int /*<<< orphan*/  q_lock; scalar_t__ qpos_changed; int /*<<< orphan*/  chip; } ;

/* Variables and functions */
 int ENXIO ; 
 int SNDRV_SB_CSP_ST_QSOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct snd_sb_csp * p)
{
	int err = -ENXIO;

	FUNC1(&p->q_lock);
	if (p->running & SNDRV_SB_CSP_ST_QSOUND) {
		FUNC0(p->chip, 0xe0, 0x01);
		/* left channel */
		FUNC0(p->chip, 0x00, p->qpos_left);
		FUNC0(p->chip, 0x02, 0x00);
		/* right channel */
		FUNC0(p->chip, 0x00, p->qpos_right);
		FUNC0(p->chip, 0x03, 0x00);
		err = 0;
	}
	p->qpos_changed = 0;
	FUNC2(&p->q_lock);
	return err;
}