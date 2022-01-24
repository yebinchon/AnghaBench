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
struct rme32 {int /*<<< orphan*/  lock; scalar_t__ capture_periodsize; int /*<<< orphan*/ * capture_substream; } ;

/* Variables and functions */
 struct rme32* FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream)
{
	struct rme32 *rme32 = FUNC0(substream);

	FUNC1(&rme32->lock);
	rme32->capture_substream = NULL;
	rme32->capture_periodsize = 0;
	FUNC2(&rme32->lock);
	return 0;
}