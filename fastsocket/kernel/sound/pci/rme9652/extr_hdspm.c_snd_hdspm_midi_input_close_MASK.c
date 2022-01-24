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
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct hdspm_midi {int /*<<< orphan*/  lock; int /*<<< orphan*/ * input; } ;
struct TYPE_2__ {struct hdspm_midi* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_rawmidi_substream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct snd_rawmidi_substream *substream)
{
	struct hdspm_midi *hmidi;

	FUNC0 (substream, 0);

	hmidi = substream->rmidi->private_data;
	FUNC1 (&hmidi->lock);
	hmidi->input = NULL;
	FUNC2 (&hmidi->lock);

	return 0;
}