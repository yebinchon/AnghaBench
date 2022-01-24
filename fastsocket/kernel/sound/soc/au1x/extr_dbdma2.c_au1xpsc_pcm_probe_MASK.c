#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int dummy; } ;
struct au1xpsc_audio_dmadata {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ddma_id; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_DMA ; 
 size_t PCM_RX ; 
 size_t PCM_TX ; 
 TYPE_1__** au1xpsc_audio_pcmdma ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC2 (struct platform_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct resource *r;
	int ret;

	if (au1xpsc_audio_pcmdma[PCM_TX] || au1xpsc_audio_pcmdma[PCM_RX])
		return -EBUSY;

	/* TX DMA */
	au1xpsc_audio_pcmdma[PCM_TX]
		= FUNC1(sizeof(struct au1xpsc_audio_dmadata), GFP_KERNEL);
	if (!au1xpsc_audio_pcmdma[PCM_TX])
		return -ENOMEM;

	r = FUNC2(pdev, IORESOURCE_DMA, 0);
	if (!r) {
		ret = -ENODEV;
		goto out1;
	}
	(au1xpsc_audio_pcmdma[PCM_TX])->ddma_id = r->start;

	/* RX DMA */
	au1xpsc_audio_pcmdma[PCM_RX]
		= FUNC1(sizeof(struct au1xpsc_audio_dmadata), GFP_KERNEL);
	if (!au1xpsc_audio_pcmdma[PCM_RX])
		return -ENOMEM;

	r = FUNC2(pdev, IORESOURCE_DMA, 1);
	if (!r) {
		ret = -ENODEV;
		goto out2;
	}
	(au1xpsc_audio_pcmdma[PCM_RX])->ddma_id = r->start;

	return 0;

out2:
	FUNC0(au1xpsc_audio_pcmdma[PCM_RX]);
	au1xpsc_audio_pcmdma[PCM_RX] = NULL;
out1:
	FUNC0(au1xpsc_audio_pcmdma[PCM_TX]);
	au1xpsc_audio_pcmdma[PCM_TX] = NULL;
	return ret;
}