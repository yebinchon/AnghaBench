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
struct snd_virmidi_dev {int /*<<< orphan*/  port; int /*<<< orphan*/  client; int /*<<< orphan*/  seq_mode; } ;
struct snd_virmidi {struct snd_virmidi_dev* rdev; int /*<<< orphan*/  event; int /*<<< orphan*/  port; int /*<<< orphan*/  client; int /*<<< orphan*/  seq_mode; int /*<<< orphan*/  parser; struct snd_rawmidi_substream* substream; } ;
struct snd_rawmidi_substream {struct snd_rawmidi_runtime* runtime; TYPE_1__* rmidi; } ;
struct snd_rawmidi_runtime {struct snd_virmidi* private_data; } ;
struct TYPE_2__ {struct snd_virmidi_dev* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_MIDI_EVENT_BUF ; 
 int /*<<< orphan*/  FUNC0 (struct snd_virmidi*) ; 
 struct snd_virmidi* FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_virmidi*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct snd_rawmidi_substream *substream)
{
	struct snd_virmidi_dev *rdev = substream->rmidi->private_data;
	struct snd_rawmidi_runtime *runtime = substream->runtime;
	struct snd_virmidi *vmidi;

	vmidi = FUNC1(sizeof(*vmidi), GFP_KERNEL);
	if (vmidi == NULL)
		return -ENOMEM;
	vmidi->substream = substream;
	if (FUNC2(MAX_MIDI_EVENT_BUF, &vmidi->parser) < 0) {
		FUNC0(vmidi);
		return -ENOMEM;
	}
	vmidi->seq_mode = rdev->seq_mode;
	vmidi->client = rdev->client;
	vmidi->port = rdev->port;
	FUNC3(vmidi, &vmidi->event);
	vmidi->rdev = rdev;
	runtime->private_data = vmidi;
	return 0;
}