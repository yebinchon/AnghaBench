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
struct snd_midi_event {int bufsize; int lastcmd; int /*<<< orphan*/  lock; int /*<<< orphan*/  type; int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ST_INVALID ; 
 int /*<<< orphan*/  FUNC0 (struct snd_midi_event*) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct snd_midi_event* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(int bufsize, struct snd_midi_event **rdev)
{
	struct snd_midi_event *dev;

	*rdev = NULL;
	dev = FUNC2(sizeof(*dev), GFP_KERNEL);
	if (dev == NULL)
		return -ENOMEM;
	if (bufsize > 0) {
		dev->buf = FUNC1(bufsize, GFP_KERNEL);
		if (dev->buf == NULL) {
			FUNC0(dev);
			return -ENOMEM;
		}
	}
	dev->bufsize = bufsize;
	dev->lastcmd = 0xff;
	dev->type = ST_INVALID;
	FUNC3(&dev->lock);
	*rdev = dev;
	return 0;
}