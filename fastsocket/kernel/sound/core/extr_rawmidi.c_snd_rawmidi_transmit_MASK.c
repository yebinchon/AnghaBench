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
struct snd_rawmidi_substream {int /*<<< orphan*/  opened; } ;

/* Variables and functions */
 int EBADFD ; 
 int FUNC0 (struct snd_rawmidi_substream*,int) ; 
 int FUNC1 (struct snd_rawmidi_substream*,unsigned char*,int) ; 

int FUNC2(struct snd_rawmidi_substream *substream,
			 unsigned char *buffer, int count)
{
	if (!substream->opened)
		return -EBADFD;
	count = FUNC1(substream, buffer, count);
	if (count < 0)
		return count;
	return FUNC0(substream, count);
}