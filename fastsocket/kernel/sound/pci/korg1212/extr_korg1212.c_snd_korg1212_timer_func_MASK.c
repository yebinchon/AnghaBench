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
struct TYPE_4__ {scalar_t__ expires; } ;
struct snd_korg1212 {scalar_t__ stop_pending_cnt; int dsp_stop_is_processed; size_t cardState; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait; TYPE_1__* sharedBufferPtr; TYPE_2__ timer; } ;
struct TYPE_3__ {scalar_t__ cardCommand; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * stateName ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(unsigned long data)
{
        struct snd_korg1212 *korg1212 = (struct snd_korg1212 *) data;
	unsigned long flags;
	
	FUNC4(&korg1212->lock, flags);
	if (korg1212->sharedBufferPtr->cardCommand == 0) {
		/* ack'ed */
		korg1212->stop_pending_cnt = 0;
		korg1212->dsp_stop_is_processed = 1;
		FUNC6(&korg1212->wait);
		FUNC1("K1212_DEBUG: Stop ack'ed [%s]\n",
					   stateName[korg1212->cardState]);
	} else {
		if (--korg1212->stop_pending_cnt > 0) {
			/* reprogram timer */
			korg1212->timer.expires = jiffies + 1;
			FUNC2(&korg1212->timer);
		} else {
			FUNC3("korg1212_timer_func timeout\n");
			korg1212->sharedBufferPtr->cardCommand = 0;
			korg1212->dsp_stop_is_processed = 1;
			FUNC6(&korg1212->wait);
			FUNC0("K1212_DEBUG: Stop timeout [%s]\n",
					   stateName[korg1212->cardState]);
		}
	}
	FUNC5(&korg1212->lock, flags);
}