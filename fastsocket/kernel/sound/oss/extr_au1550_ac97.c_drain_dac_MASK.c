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
struct TYPE_2__ {int count; int fragsize; int sample_rate; int dma_bytes_per_sample; scalar_t__ stopped; int /*<<< orphan*/  ready; scalar_t__ mapped; } ;
struct au1550_state {TYPE_1__ dma_dac; scalar_t__ no_vra; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EBUSY ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC4(struct au1550_state *s, int nonblock)
{
	unsigned long   flags;
	int             count, tmo;

	if (s->dma_dac.mapped || !s->dma_dac.ready || s->dma_dac.stopped)
		return 0;

	for (;;) {
		FUNC2(&s->lock, flags);
		count = s->dma_dac.count;
		FUNC3(&s->lock, flags);
		if (count <= s->dma_dac.fragsize)
			break;
		if (FUNC1(current))
			break;
		if (nonblock)
			return -EBUSY;
		tmo = 1000 * count / (s->no_vra ?
				      48000 : s->dma_dac.sample_rate);
		tmo /= s->dma_dac.dma_bytes_per_sample;
		FUNC0(tmo);
	}
	if (FUNC1(current))
		return -ERESTARTSYS;
	return 0;
}