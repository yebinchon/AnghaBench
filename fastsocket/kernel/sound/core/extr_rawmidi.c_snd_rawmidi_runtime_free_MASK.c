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
struct snd_rawmidi_substream {struct snd_rawmidi_runtime* runtime; } ;
struct snd_rawmidi_runtime {struct snd_rawmidi_runtime* buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_rawmidi_runtime*) ; 

__attribute__((used)) static int FUNC1(struct snd_rawmidi_substream *substream)
{
	struct snd_rawmidi_runtime *runtime = substream->runtime;

	FUNC0(runtime->buffer);
	FUNC0(runtime);
	substream->runtime = NULL;
	return 0;
}