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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned short dma_addr; } ;
struct snd_als300 {int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  PLAYBACK_CONTROL ; 
 int /*<<< orphan*/  PLAYBACK_END ; 
 int /*<<< orphan*/  PLAYBACK_START ; 
 int TRANSFER_START ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned short,unsigned short) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned short) ; 
 unsigned short FUNC5 (struct snd_pcm_substream*) ; 
 unsigned short FUNC6 (struct snd_pcm_substream*) ; 
 struct snd_als300* FUNC7 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct snd_pcm_substream *substream)
{
	u32 tmp;
	struct snd_als300 *chip = FUNC7(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	unsigned short period_bytes = FUNC6(substream);
	unsigned short buffer_bytes = FUNC5(substream);
	
	FUNC0();
	FUNC8(&chip->reg_lock);
	tmp = FUNC3(chip->port, PLAYBACK_CONTROL);
	tmp &= ~TRANSFER_START;

	FUNC2("Period bytes: %d Buffer bytes %d\n",
						period_bytes, buffer_bytes);
	
	/* set block size */
	tmp &= 0xffff0000;
	tmp |= period_bytes - 1;
	FUNC4(chip->port, PLAYBACK_CONTROL, tmp);

	/* set dma area */
	FUNC4(chip->port, PLAYBACK_START,
					runtime->dma_addr);
	FUNC4(chip->port, PLAYBACK_END,
					runtime->dma_addr + buffer_bytes - 1);
	FUNC9(&chip->reg_lock);
	FUNC1();
	return 0;
}