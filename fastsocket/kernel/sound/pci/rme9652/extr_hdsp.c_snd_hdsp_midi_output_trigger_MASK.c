#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct TYPE_6__ {unsigned long data; scalar_t__ expires; int /*<<< orphan*/  function; } ;
struct hdsp_midi {scalar_t__ istimer; int /*<<< orphan*/  lock; TYPE_2__ timer; } ;
struct TYPE_5__ {scalar_t__ private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  snd_hdsp_midi_output_timer ; 
 int /*<<< orphan*/  FUNC3 (struct hdsp_midi*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct snd_rawmidi_substream *substream, int up)
{
	struct hdsp_midi *hmidi;
	unsigned long flags;

	hmidi = (struct hdsp_midi *) substream->rmidi->private_data;
	FUNC4 (&hmidi->lock, flags);
	if (up) {
		if (!hmidi->istimer) {
			FUNC2(&hmidi->timer);
			hmidi->timer.function = snd_hdsp_midi_output_timer;
			hmidi->timer.data = (unsigned long) hmidi;
			hmidi->timer.expires = 1 + jiffies;
			FUNC0(&hmidi->timer);
			hmidi->istimer++;
		}
	} else {
		if (hmidi->istimer && --hmidi->istimer <= 0)
			FUNC1 (&hmidi->timer);
	}
	FUNC5 (&hmidi->lock, flags);
	if (up)
		FUNC3(hmidi);
}