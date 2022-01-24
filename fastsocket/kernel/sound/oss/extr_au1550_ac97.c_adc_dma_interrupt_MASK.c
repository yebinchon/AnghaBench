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
typedef  scalar_t__ u32 ;
struct dmabuf {scalar_t__ count; scalar_t__ dmasize; scalar_t__ nextIn; scalar_t__ dma_fragsize; scalar_t__ rawbuf; int /*<<< orphan*/  wait; int /*<<< orphan*/  total_bytes; int /*<<< orphan*/  dmanr; int /*<<< orphan*/  error; } ;
struct au1550_state {int /*<<< orphan*/  lock; struct dmabuf dma_adc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct au1550_state*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(int irq, void *dev_id)
{
	struct	au1550_state *s = (struct au1550_state *)dev_id;
	struct	dmabuf  *dp = &s->dma_adc;
	u32	obytes;
	char	*obuf;

	FUNC3(&s->lock);

	/* Pull the buffer from the dma queue.
	*/
	FUNC0(dp->dmanr, (void *)(&obuf), &obytes);

	if ((dp->count + obytes) > dp->dmasize) {
		/* Overrun. Stop ADC and log the error
		*/
		FUNC4(&s->lock);
		FUNC5(s);
		dp->error++;
		FUNC2("adc overrun");
		return;
	}

	/* Put a new empty buffer on the destination DMA.
	*/
	FUNC1(dp->dmanr, dp->nextIn, dp->dma_fragsize);

	dp->nextIn += dp->dma_fragsize;
	if (dp->nextIn >= dp->rawbuf + dp->dmasize)
		dp->nextIn -= dp->dmasize;

	dp->count += obytes;
	dp->total_bytes += obytes;

	/* wake up anybody listening
	*/
	if (FUNC6(&dp->wait))
		FUNC7(&dp->wait);

	FUNC4(&s->lock);
}