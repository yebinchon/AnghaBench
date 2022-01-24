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
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_ice1712 {int capture_pro_size; int /*<<< orphan*/  reg_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  dma_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAPTURE_ADDR ; 
 int /*<<< orphan*/  CAPTURE_COUNT ; 
 int /*<<< orphan*/  CAPTURE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_pcm_substream*) ; 
 int FUNC4 (struct snd_pcm_substream*) ; 
 struct snd_ice1712* FUNC5 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream)
{
	struct snd_ice1712 *ice = FUNC5(substream);

	ice->capture_pro_size = FUNC3(substream);
	FUNC6(&ice->reg_lock);
	FUNC1(substream->runtime->dma_addr, FUNC0(ice, CAPTURE_ADDR));
	FUNC2((ice->capture_pro_size >> 2) - 1, FUNC0(ice, CAPTURE_SIZE));
	FUNC2((FUNC4(substream) >> 2) - 1, FUNC0(ice, CAPTURE_COUNT));
	FUNC7(&ice->reg_lock);
	return 0;
}