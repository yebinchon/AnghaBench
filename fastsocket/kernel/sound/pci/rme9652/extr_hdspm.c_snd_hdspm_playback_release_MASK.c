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
struct hdspm {int playback_pid; int /*<<< orphan*/  lock; int /*<<< orphan*/ * playback_substream; } ;

/* Variables and functions */
 struct hdspm* FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream)
{
	struct hdspm *hdspm = FUNC0(substream);

	FUNC1(&hdspm->lock);

	hdspm->playback_pid = -1;
	hdspm->playback_substream = NULL;

	FUNC2(&hdspm->lock);

	return 0;
}