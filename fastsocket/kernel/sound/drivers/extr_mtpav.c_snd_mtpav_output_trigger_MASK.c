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
struct snd_rawmidi_substream {size_t number; TYPE_1__* rmidi; } ;
struct mtpav_port {int mode; } ;
struct mtpav {scalar_t__ istimer; int /*<<< orphan*/  spinlock; struct mtpav_port* ports; } ;
struct TYPE_2__ {struct mtpav* private_data; } ;

/* Variables and functions */
 int MTPAV_MODE_OUTPUT_TRIGGERED ; 
 int /*<<< orphan*/  FUNC0 (struct mtpav*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_rawmidi_substream*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtpav*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct snd_rawmidi_substream *substream, int up)
{
	struct mtpav *mtp_card = substream->rmidi->private_data;
	struct mtpav_port *portp = &mtp_card->ports[substream->number];
	unsigned long flags;

	FUNC3(&mtp_card->spinlock, flags);
	if (up) {
		if (! (portp->mode & MTPAV_MODE_OUTPUT_TRIGGERED)) {
			if (mtp_card->istimer++ == 0)
				FUNC0(mtp_card);
			portp->mode |= MTPAV_MODE_OUTPUT_TRIGGERED;
		}
	} else {
		portp->mode &= ~MTPAV_MODE_OUTPUT_TRIGGERED;
		if (--mtp_card->istimer == 0)
			FUNC2(mtp_card);
	}
	FUNC4(&mtp_card->spinlock, flags);

	if (up)
		FUNC1(substream);
}