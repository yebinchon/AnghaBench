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
struct TYPE_2__ {int /*<<< orphan*/  substream; } ;
struct ua101 {TYPE_1__ playback; int /*<<< orphan*/  states; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALSA_PLAYBACK_RUNNING ; 
 int /*<<< orphan*/  SNDRV_PCM_STATE_XRUN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct ua101 *ua)
{
	if (FUNC1(ALSA_PLAYBACK_RUNNING, &ua->states))
		FUNC0(ua->playback.substream, SNDRV_PCM_STATE_XRUN);
}