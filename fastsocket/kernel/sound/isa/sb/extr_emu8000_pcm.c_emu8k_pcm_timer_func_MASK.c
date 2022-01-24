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
struct TYPE_2__ {scalar_t__ expires; } ;
struct snd_emu8k_pcm {int last_ptr; int buf_size; int period_pos; int period_size; int /*<<< orphan*/  timer_lock; int /*<<< orphan*/  substream; TYPE_1__ timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (struct snd_emu8k_pcm*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(unsigned long data)
{
	struct snd_emu8k_pcm *rec = (struct snd_emu8k_pcm *)data;
	int ptr, delta;

	FUNC3(&rec->timer_lock);
	/* update the current pointer */
	ptr = FUNC1(rec, 0);
	if (ptr < rec->last_ptr)
		delta = ptr + rec->buf_size - rec->last_ptr;
	else
		delta = ptr - rec->last_ptr;
	rec->period_pos += delta;
	rec->last_ptr = ptr;

	/* reprogram timer */
	rec->timer.expires = jiffies + 1;
	FUNC0(&rec->timer);

	/* update period */
	if (rec->period_pos >= (int)rec->period_size) {
		rec->period_pos %= rec->period_size;
		FUNC4(&rec->timer_lock);
		FUNC2(rec->substream);
		return;
	}
	FUNC4(&rec->timer_lock);
}