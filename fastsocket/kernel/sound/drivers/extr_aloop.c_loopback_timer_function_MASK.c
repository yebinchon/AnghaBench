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
struct loopback_pcm {TYPE_1__* substream; scalar_t__ period_update_pending; int /*<<< orphan*/  cable; } ;
struct TYPE_2__ {int stream; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct loopback_pcm*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(unsigned long data)
{
	struct loopback_pcm *dpcm = (struct loopback_pcm *)data;
	unsigned int running;

	running = FUNC0(dpcm->cable);
	if (running & (1 << dpcm->substream->stream)) {
		FUNC1(dpcm);
		if (dpcm->period_update_pending) {
			dpcm->period_update_pending = 0;
			FUNC2(dpcm->substream);
		}
	}
}