#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_seq_port_callback {struct snd_opl4* private_data; int /*<<< orphan*/  private_free; int /*<<< orphan*/  event_input; int /*<<< orphan*/  unuse; int /*<<< orphan*/  use; int /*<<< orphan*/  owner; } ;
struct snd_seq_device {int dummy; } ;
struct snd_opl4 {int seq_client; TYPE_1__* chset; int /*<<< orphan*/  seq_dev_num; int /*<<< orphan*/  card; } ;
typedef  int /*<<< orphan*/  pcallbacks ;
struct TYPE_3__ {int client; int port; struct snd_opl4* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct snd_seq_device*) ; 
 int SNDRV_SEQ_PORT_CAP_SUBS_WRITE ; 
 int SNDRV_SEQ_PORT_CAP_WRITE ; 
 int SNDRV_SEQ_PORT_TYPE_HARDWARE ; 
 int SNDRV_SEQ_PORT_TYPE_MIDI_GENERIC ; 
 int SNDRV_SEQ_PORT_TYPE_MIDI_GM ; 
 int SNDRV_SEQ_PORT_TYPE_SYNTHESIZER ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC1 (struct snd_seq_port_callback*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  snd_opl4_seq_event_input ; 
 int /*<<< orphan*/  snd_opl4_seq_free_port ; 
 int /*<<< orphan*/  snd_opl4_seq_unuse ; 
 int /*<<< orphan*/  snd_opl4_seq_use ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int,struct snd_seq_port_callback*,int,int,int,int,char*) ; 
 scalar_t__ FUNC7 (struct snd_opl4*) ; 

__attribute__((used)) static int FUNC8(struct snd_seq_device *dev)
{
	struct snd_opl4 *opl4;
	int client;
	struct snd_seq_port_callback pcallbacks;

	opl4 = *(struct snd_opl4 **)FUNC0(dev);
	if (!opl4)
		return -EINVAL;

	if (FUNC7(opl4) < 0)
		return -ENODEV;

	opl4->chset = FUNC2(16);
	if (!opl4->chset)
		return -ENOMEM;
	opl4->chset->private_data = opl4;

	/* allocate new client */
	client = FUNC4(opl4->card, opl4->seq_dev_num,
					      "OPL4 Wavetable");
	if (client < 0) {
		FUNC3(opl4->chset);
		return client;
	}
	opl4->seq_client = client;
	opl4->chset->client = client;

	/* create new port */
	FUNC1(&pcallbacks, 0, sizeof(pcallbacks));
	pcallbacks.owner = THIS_MODULE;
	pcallbacks.use = snd_opl4_seq_use;
	pcallbacks.unuse = snd_opl4_seq_unuse;
	pcallbacks.event_input = snd_opl4_seq_event_input;
	pcallbacks.private_free = snd_opl4_seq_free_port;
	pcallbacks.private_data = opl4;

	opl4->chset->port = FUNC6(client, &pcallbacks,
						      SNDRV_SEQ_PORT_CAP_WRITE |
						      SNDRV_SEQ_PORT_CAP_SUBS_WRITE,
						      SNDRV_SEQ_PORT_TYPE_MIDI_GENERIC |
						      SNDRV_SEQ_PORT_TYPE_MIDI_GM |
						      SNDRV_SEQ_PORT_TYPE_HARDWARE |
						      SNDRV_SEQ_PORT_TYPE_SYNTHESIZER,
						      16, 24,
						      "OPL4 Wavetable Port");
	if (opl4->chset->port < 0) {
		int err = opl4->chset->port;
		FUNC3(opl4->chset);
		FUNC5(client);
		opl4->seq_client = -1;
		return err;
	}
	return 0;
}