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
struct ua101 {int /*<<< orphan*/  mutex; int /*<<< orphan*/  states; } ;
struct snd_pcm_substream {struct ua101* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALSA_CAPTURE_OPEN ; 
 int /*<<< orphan*/  ALSA_PLAYBACK_OPEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ua101*) ; 
 int /*<<< orphan*/  FUNC4 (struct ua101*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream)
{
	struct ua101 *ua = substream->private_data;

	FUNC1(&ua->mutex);
	FUNC4(ua);
	FUNC0(ALSA_PLAYBACK_OPEN, &ua->states);
	if (!FUNC5(ALSA_CAPTURE_OPEN, &ua->states))
		FUNC3(ua);
	FUNC2(&ua->mutex);
	return 0;
}