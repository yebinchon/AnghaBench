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
struct psc_dma_stream {scalar_t__ period_current_pt; scalar_t__ period_bytes; scalar_t__ period_end; scalar_t__ period_start; int /*<<< orphan*/  stream; scalar_t__ active; TYPE_1__* psc_dma; int /*<<< orphan*/  bcom_task; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct psc_dma_stream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *_psc_dma_stream)
{
	struct psc_dma_stream *s = _psc_dma_stream;

	FUNC4(&s->psc_dma->lock);
	/* For each finished period, dequeue the completed period buffer
	 * and enqueue a new one in it's place. */
	while (FUNC0(s->bcom_task)) {
		FUNC1(s->bcom_task, NULL, NULL);

		s->period_current_pt += s->period_bytes;
		if (s->period_current_pt >= s->period_end)
			s->period_current_pt = s->period_start;

		FUNC2(s);
	}
	FUNC5(&s->psc_dma->lock);

	/* If the stream is active, then also inform the PCM middle layer
	 * of the period finished event. */
	if (s->active)
		FUNC3(s->stream);

	return IRQ_HANDLED;
}