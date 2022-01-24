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
struct snd_pcm_substream {int dummy; } ;
struct atiixp_modem {int /*<<< orphan*/  reg_lock; } ;
struct atiixp_dma {scalar_t__ opened; int /*<<< orphan*/ * substream; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* enable_dma ) (struct atiixp_modem*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 struct atiixp_modem* FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct atiixp_modem*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
				struct atiixp_dma *dma)
{
	struct atiixp_modem *chip = FUNC1(substream);
	/* disable DMA bits */
	if (FUNC0(!dma->ops || !dma->ops->enable_dma))
		return -EINVAL;
	FUNC2(&chip->reg_lock);
	dma->ops->enable_dma(chip, 0);
	FUNC3(&chip->reg_lock);
	dma->substream = NULL;
	dma->opened = 0;
	return 0;
}