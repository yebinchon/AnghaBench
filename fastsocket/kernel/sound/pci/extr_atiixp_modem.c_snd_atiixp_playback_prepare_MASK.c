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
struct snd_pcm_substream {int dummy; } ;
struct atiixp_modem {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 unsigned int ATI_REG_MODEM_OUT1_DMA_THRESHOLD_MASK ; 
 int ATI_REG_MODEM_OUT1_DMA_THRESHOLD_SHIFT ; 
 int /*<<< orphan*/  MODEM_OUT_FIFO ; 
 unsigned int FUNC0 (struct atiixp_modem*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atiixp_modem*,int /*<<< orphan*/ ,unsigned int) ; 
 struct atiixp_modem* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream)
{
	struct atiixp_modem *chip = FUNC2(substream);
	unsigned int data;

	FUNC3(&chip->reg_lock);
	/* set output threshold */
	data = FUNC0(chip, MODEM_OUT_FIFO);
	data &= ~ATI_REG_MODEM_OUT1_DMA_THRESHOLD_MASK;
	data |= 0x04 << ATI_REG_MODEM_OUT1_DMA_THRESHOLD_SHIFT;
	FUNC1(chip, MODEM_OUT_FIFO, data);
	FUNC4(&chip->reg_lock);
	return 0;
}