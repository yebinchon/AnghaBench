#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  client; } ;
struct TYPE_3__ {int /*<<< orphan*/  port; } ;
struct snd_seq_event {scalar_t__ type; TYPE_2__ dest; TYPE_1__ source; } ;
struct snd_rawmidi_substream {struct snd_rawmidi_runtime* runtime; } ;
struct snd_rawmidi_runtime {scalar_t__ avail; struct seq_midisynth* private_data; } ;
struct seq_midisynth {int /*<<< orphan*/  seq_client; int /*<<< orphan*/  seq_port; int /*<<< orphan*/ * parser; } ;
typedef  int /*<<< orphan*/  ev ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_SEQ_ADDRESS_SUBSCRIBERS ; 
 scalar_t__ SNDRV_SEQ_EVENT_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_seq_event*,int /*<<< orphan*/ ,int) ; 
 long FUNC1 (int /*<<< orphan*/ *,char*,long,struct snd_seq_event*) ; 
 long FUNC2 (struct snd_rawmidi_substream*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct snd_seq_event*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct snd_rawmidi_substream *substream)
{
	struct snd_rawmidi_runtime *runtime;
	struct seq_midisynth *msynth;
	struct snd_seq_event ev;
	char buf[16], *pbuf;
	long res, count;

	if (substream == NULL)
		return;
	runtime = substream->runtime;
	msynth = runtime->private_data;
	if (msynth == NULL)
		return;
	FUNC0(&ev, 0, sizeof(ev));
	while (runtime->avail > 0) {
		res = FUNC2(substream, buf, sizeof(buf));
		if (res <= 0)
			continue;
		if (msynth->parser == NULL)
			continue;
		pbuf = buf;
		while (res > 0) {
			count = FUNC1(msynth->parser, pbuf, res, &ev);
			if (count < 0)
				break;
			pbuf += count;
			res -= count;
			if (ev.type != SNDRV_SEQ_EVENT_NONE) {
				ev.source.port = msynth->seq_port;
				ev.dest.client = SNDRV_SEQ_ADDRESS_SUBSCRIBERS;
				FUNC3(msynth->seq_client, &ev, 1, 0);
				/* clear event and reset header */
				FUNC0(&ev, 0, sizeof(ev));
			}
		}
	}
}