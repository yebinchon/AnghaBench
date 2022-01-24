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
struct mtpav_port {int dummy; } ;
struct mtpav {int /*<<< orphan*/  spinlock; struct mtpav_port* ports; } ;
struct TYPE_2__ {struct mtpav* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mtpav*,struct mtpav_port*,struct snd_rawmidi_substream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct snd_rawmidi_substream *substream)
{
	struct mtpav *mtp_card = substream->rmidi->private_data;
	struct mtpav_port *portp = &mtp_card->ports[substream->number];
	unsigned long flags;

	FUNC1(&mtp_card->spinlock, flags);
	FUNC0(mtp_card, portp, substream);
	FUNC2(&mtp_card->spinlock, flags);
}