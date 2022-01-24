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
typedef  void* u8 ;
struct snd_rawmidi_substream {int dummy; } ;
struct snd_ice1712 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MPU_DATA ; 
 int /*<<< orphan*/  MPU_RXFIFO ; 
 int /*<<< orphan*/  SNDRV_RAWMIDI_STREAM_INPUT ; 
 struct snd_rawmidi_substream* FUNC1 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_rawmidi_substream*,void**,int) ; 

__attribute__((used)) static void FUNC5(struct snd_ice1712 *ice)
{
	struct snd_rawmidi_substream *s;
	int count, i;
	u8 buffer[32];

	s = FUNC1(ice, SNDRV_RAWMIDI_STREAM_INPUT);
	count = FUNC2(FUNC0(ice, MPU_RXFIFO));
	if (count > 0) {
		count = FUNC3(count, 32);
		for (i = 0; i < count; ++i)
			buffer[i] = FUNC2(FUNC0(ice, MPU_DATA));
		FUNC4(s, buffer, count);
	}
}