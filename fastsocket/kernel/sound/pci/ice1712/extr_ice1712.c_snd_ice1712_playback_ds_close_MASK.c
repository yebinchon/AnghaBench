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
typedef  int u32 ;
struct snd_pcm_substream {int number; } ;
struct snd_ice1712 {int /*<<< orphan*/ ** playback_con_substream_ds; int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTMASK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct snd_ice1712* FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream)
{
	struct snd_ice1712 *ice = FUNC3(substream);
	u32 tmp;

	FUNC4(&ice->reg_lock);
	tmp = FUNC1(FUNC0(ice, INTMASK)) | (3 << (substream->number * 2));
	FUNC2(tmp, FUNC0(ice, INTMASK));
	FUNC5(&ice->reg_lock);
	ice->playback_con_substream_ds[substream->number] = NULL;
	return 0;
}