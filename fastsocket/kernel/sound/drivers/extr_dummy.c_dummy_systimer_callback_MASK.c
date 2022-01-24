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
struct dummy_systimer_pcm {int elapsed; int /*<<< orphan*/  substream; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dummy_systimer_pcm*) ; 
 int /*<<< orphan*/  FUNC1 (struct dummy_systimer_pcm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(unsigned long data)
{
	struct dummy_systimer_pcm *dpcm = (struct dummy_systimer_pcm *)data;
	unsigned long flags;
	int elapsed = 0;
	
	FUNC3(&dpcm->lock, flags);
	FUNC1(dpcm);
	FUNC0(dpcm);
	elapsed = dpcm->elapsed;
	dpcm->elapsed = 0;
	FUNC4(&dpcm->lock, flags);
	if (elapsed)
		FUNC2(dpcm->substream);
}