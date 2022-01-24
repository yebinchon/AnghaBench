#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct psc_dma_stream {scalar_t__ appl_ptr; scalar_t__ period_size; int /*<<< orphan*/  bcom_task; TYPE_1__* runtime; } ;
struct TYPE_4__ {scalar_t__ appl_ptr; } ;
struct TYPE_3__ {scalar_t__ boundary; TYPE_2__* control; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct psc_dma_stream*) ; 

__attribute__((used)) static void FUNC2(struct psc_dma_stream *s)
{
	if (s->appl_ptr > s->runtime->control->appl_ptr) {
		/*
		 * In this case s->runtime->control->appl_ptr has wrapped around.
		 * Play the data to the end of the boundary, then wrap our own
		 * appl_ptr back around.
		 */
		while (s->appl_ptr < s->runtime->boundary) {
			if (FUNC0(s->bcom_task))
				return;

			s->appl_ptr += s->period_size;

			FUNC1(s);
		}
		s->appl_ptr -= s->runtime->boundary;
	}

	while (s->appl_ptr < s->runtime->control->appl_ptr) {

		if (FUNC0(s->bcom_task))
			return;

		s->appl_ptr += s->period_size;

		FUNC1(s);
	}
}