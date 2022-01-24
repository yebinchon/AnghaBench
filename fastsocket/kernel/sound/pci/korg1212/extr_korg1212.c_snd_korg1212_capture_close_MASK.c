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
struct snd_korg1212 {size_t cardState; int capture_pid; int /*<<< orphan*/  lock; scalar_t__ periodsize; int /*<<< orphan*/ * capture_substream; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_korg1212*) ; 
 struct snd_korg1212* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * stateName ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream)
{
        unsigned long flags;
        struct snd_korg1212 *korg1212 = FUNC2(substream);

	FUNC0("K1212_DEBUG: snd_korg1212_capture_close [%s]\n",
			   stateName[korg1212->cardState]);

        FUNC3(&korg1212->lock, flags);

	korg1212->capture_pid = -1;
        korg1212->capture_substream = NULL;
        korg1212->periodsize = 0;

        FUNC4(&korg1212->lock, flags);

	FUNC1(korg1212);
        return 0;
}