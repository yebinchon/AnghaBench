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
struct snd_seq_device {int device; struct snd_card* card; } ;
struct snd_card {size_t number; } ;
struct seq_midisynth_client {int* ports_per_device; scalar_t__ num_ports; int /*<<< orphan*/  seq_client; struct seq_midisynth_client** ports; } ;
struct seq_midisynth {int* ports_per_device; scalar_t__ num_ports; int /*<<< orphan*/  seq_client; struct seq_midisynth** ports; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct seq_midisynth_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  register_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_midisynth_client*) ; 
 struct seq_midisynth_client** synths ; 

__attribute__((used)) static int
FUNC5(struct snd_seq_device *dev)
{
	struct seq_midisynth_client *client;
	struct seq_midisynth *msynth;
	struct snd_card *card = dev->card;
	int device = dev->device, p, ports;
	
	FUNC1(&register_mutex);
	client = synths[card->number];
	if (client == NULL || client->ports[device] == NULL) {
		FUNC2(&register_mutex);
		return -ENODEV;
	}
	ports = client->ports_per_device[device];
	client->ports_per_device[device] = 0;
	msynth = client->ports[device];
	client->ports[device] = NULL;
	for (p = 0; p < ports; p++)
		FUNC4(&msynth[p]);
	FUNC0(msynth);
	client->num_ports--;
	if (client->num_ports <= 0) {
		FUNC3(client->seq_client);
		synths[card->number] = NULL;
		FUNC0(client);
	}
	FUNC2(&register_mutex);
	return 0;
}