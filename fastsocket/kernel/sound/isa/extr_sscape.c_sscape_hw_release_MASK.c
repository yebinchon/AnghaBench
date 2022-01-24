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
struct soundscape {int /*<<< orphan*/  fwlock; scalar_t__ hw_in_use; } ;
struct snd_hwdep {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 struct soundscape* FUNC0 (struct snd_hwdep*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct snd_hwdep * hw, struct file *file)
{
	register struct soundscape *sscape = FUNC0(hw);
	unsigned long flags;

	FUNC1(&sscape->fwlock, flags);
	sscape->hw_in_use = 0;
	FUNC2(&sscape->fwlock, flags);
	return 0;
}