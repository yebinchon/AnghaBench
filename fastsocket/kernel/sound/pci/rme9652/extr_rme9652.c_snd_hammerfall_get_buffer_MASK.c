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
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  type; } ;
struct snd_dma_buffer {size_t bytes; TYPE_1__ dev; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,struct snd_dma_buffer*) ; 
 scalar_t__ FUNC1 (struct snd_dma_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC4(struct pci_dev *pci, struct snd_dma_buffer *dmab, size_t size)
{
	dmab->dev.type = SNDRV_DMA_TYPE_DEV;
	dmab->dev.dev = FUNC3(pci);
	if (FUNC1(dmab, FUNC2(pci))) {
		if (dmab->bytes >= size)
			return 0;
	}
	if (FUNC0(SNDRV_DMA_TYPE_DEV, FUNC3(pci),
				size, dmab) < 0)
		return -ENOMEM;
	return 0;
}