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
struct rme96 {int /*<<< orphan*/  lock; scalar_t__ capture_periodsize; int /*<<< orphan*/ * capture_substream; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rme96*) ; 
 struct rme96* FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (struct rme96*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct snd_pcm_substream *substream)
{
	struct rme96 *rme96 = FUNC1(substream);
	
	FUNC3(&rme96->lock);	
	if (FUNC0(rme96)) {
		FUNC2(rme96);
	}
	rme96->capture_substream = NULL;
	rme96->capture_periodsize = 0;
	FUNC4(&rme96->lock);
	return 0;
}