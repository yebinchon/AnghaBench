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
struct resource {int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct mx3fb_data {int backlight_level; int /*<<< orphan*/  reg_base; struct device* dev; int /*<<< orphan*/  lock; } ;
struct dma_chan_request {int /*<<< orphan*/  id; struct mx3fb_data* mx3fb; } ;
struct dma_chan {int dummy; } ;
typedef  int /*<<< orphan*/  dma_cap_mask_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_PRIVATE ; 
 int /*<<< orphan*/  DMA_SLAVE ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IDMAC_SDC_0 ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  chan_filter ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_chan*) ; 
 struct dma_chan* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dma_chan_request*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (struct mx3fb_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mx3fb_data*) ; 
 struct mx3fb_data* FUNC11 (int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct mx3fb_data*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct resource*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	int ret;
	struct resource *sdc_reg;
	struct mx3fb_data *mx3fb;
	dma_cap_mask_t mask;
	struct dma_chan *chan;
	struct dma_chan_request rq;

	/*
	 * Display Interface (DI) and Synchronous Display Controller (SDC)
	 * registers
	 */
	sdc_reg = FUNC12(pdev, IORESOURCE_MEM, 0);
	if (!sdc_reg)
		return -EINVAL;

	mx3fb = FUNC11(sizeof(*mx3fb), GFP_KERNEL);
	if (!mx3fb)
		return -ENOMEM;

	FUNC16(&mx3fb->lock);

	mx3fb->reg_base = FUNC8(sdc_reg->start, FUNC15(sdc_reg));
	if (!mx3fb->reg_base) {
		ret = -ENOMEM;
		goto eremap;
	}

	FUNC14("Remapped %x to %x at %p\n", sdc_reg->start, sdc_reg->end,
		 mx3fb->reg_base);

	/* IDMAC interface */
	FUNC5();

	mx3fb->dev = dev;
	FUNC13(pdev, mx3fb);

	rq.mx3fb = mx3fb;

	FUNC2(mask);
	FUNC1(DMA_SLAVE, mask);
	FUNC1(DMA_PRIVATE, mask);
	rq.id = IDMAC_SDC_0;
	chan = FUNC4(mask, chan_filter, &rq);
	if (!chan) {
		ret = -EBUSY;
		goto ersdc0;
	}

	ret = FUNC7(mx3fb, FUNC17(chan));
	if (ret < 0)
		goto eisdc0;

	mx3fb->backlight_level = 255;

	return 0;

eisdc0:
	FUNC3(chan);
ersdc0:
	FUNC6();
	FUNC9(mx3fb->reg_base);
eremap:
	FUNC10(mx3fb);
	FUNC0(dev, "mx3fb: failed to register fb\n");
	return ret;
}