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
struct soundscape {scalar_t__ midi_usage; int hw_in_use; int /*<<< orphan*/  fwlock; } ;
struct snd_hwdep {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 struct soundscape* FUNC0 (struct snd_hwdep*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct snd_hwdep * hw, struct file *file)
{
	register struct soundscape *sscape = FUNC0(hw);
	unsigned long flags;
	int err;

	FUNC1(&sscape->fwlock, flags);

	if ((sscape->midi_usage != 0) || sscape->hw_in_use) {
		err = -EBUSY;
	} else {
		sscape->hw_in_use = 1;
		err = 0;
	}

	FUNC2(&sscape->fwlock, flags);
	return err;
}