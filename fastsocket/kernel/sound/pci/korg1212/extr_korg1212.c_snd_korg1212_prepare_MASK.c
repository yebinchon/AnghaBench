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
struct snd_pcm_substream {int dummy; } ;
struct snd_korg1212 {size_t cardState; scalar_t__ stop_pending_cnt; int /*<<< orphan*/  lock; scalar_t__ currentBuffer; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_korg1212*) ; 
 struct snd_korg1212* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * stateName ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream)
{
        struct snd_korg1212 *korg1212 = FUNC2(substream);
	int rc;

	FUNC0("K1212_DEBUG: snd_korg1212_prepare [%s]\n",
			   stateName[korg1212->cardState]);

	FUNC3(&korg1212->lock);

	/* FIXME: we should wait for ack! */
	if (korg1212->stop_pending_cnt > 0) {
		FUNC0("K1212_DEBUG: snd_korg1212_prepare - Stop is pending... [%s]\n",
				   stateName[korg1212->cardState]);
        	FUNC4(&korg1212->lock);
		return -EAGAIN;
		/*
		korg1212->sharedBufferPtr->cardCommand = 0;
		del_timer(&korg1212->timer);
		korg1212->stop_pending_cnt = 0;
		*/
	}

        rc = FUNC1(korg1212);

        korg1212->currentBuffer = 0;

        FUNC4(&korg1212->lock);

	return rc ? -EINVAL : 0;
}