#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_12__ {int /*<<< orphan*/  platform_data; } ;
struct platform_device {int id; TYPE_10__ dev; } ;
typedef  int /*<<< orphan*/  clk_name ;
struct TYPE_14__ {int dma_chan; scalar_t__ base; } ;
struct TYPE_13__ {int dma_chan; scalar_t__ base; } ;
struct TYPE_16__ {unsigned int irq; scalar_t__ base; int /*<<< orphan*/  clk; TYPE_2__ fsib; TYPE_1__ fsia; int /*<<< orphan*/  info; } ;
struct TYPE_15__ {TYPE_10__* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_DISABLED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_10__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  fsi_interrupt ; 
 TYPE_3__* fsi_soc_dai ; 
 int /*<<< orphan*/  fsi_soc_platform ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 TYPE_4__* FUNC11 (int,int /*<<< orphan*/ ) ; 
 TYPE_4__* master ; 
 unsigned int FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (struct resource*) ; 
 int FUNC16 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct resource *res;
	char clk_name[8];
	unsigned int irq;
	int ret;

	res = FUNC13(pdev, IORESOURCE_MEM, 0);
	irq = FUNC12(pdev, 0);
	if (!res || !irq) {
		FUNC3(&pdev->dev, "Not enough FSI platform resources.\n");
		ret = -ENODEV;
		goto exit;
	}

	master = FUNC11(sizeof(*master), GFP_KERNEL);
	if (!master) {
		FUNC3(&pdev->dev, "Could not allocate master\n");
		ret = -ENOMEM;
		goto exit;
	}

	master->base = FUNC8(res->start, FUNC15(res));
	if (!master->base) {
		ret = -ENXIO;
		FUNC3(&pdev->dev, "Unable to ioremap FSI registers.\n");
		goto exit_kfree;
	}

	master->irq		= irq;
	master->info		= pdev->dev.platform_data;
	master->fsia.base	= master->base;
	master->fsib.base	= master->base + 0x40;

	master->fsia.dma_chan = -1;
	master->fsib.dma_chan = -1;

	ret = FUNC6();
	if (ret < 0) {
		FUNC3(&pdev->dev, "cannot get dma api\n");
		goto exit_iounmap;
	}

	/* FSI is based on SPU mstp */
	FUNC18(clk_name, sizeof(clk_name), "spu%d", pdev->id);
	master->clk = FUNC2(NULL, clk_name);
	if (FUNC1(master->clk)) {
		FUNC3(&pdev->dev, "cannot get %s mstp\n", clk_name);
		ret = -EIO;
		goto exit_free_dma;
	}

	fsi_soc_dai[0].dev		= &pdev->dev;
	fsi_soc_dai[1].dev		= &pdev->dev;

	FUNC7();

	ret = FUNC14(irq, &fsi_interrupt, IRQF_DISABLED, "fsi", master);
	if (ret) {
		FUNC3(&pdev->dev, "irq request err\n");
		goto exit_free_dma;
	}

	ret = FUNC17(&fsi_soc_platform);
	if (ret < 0) {
		FUNC3(&pdev->dev, "cannot snd soc register\n");
		goto exit_free_irq;
	}

	return FUNC16(fsi_soc_dai, FUNC0(fsi_soc_dai));

exit_free_irq:
	FUNC4(irq, master);
exit_free_dma:
	FUNC5();
exit_iounmap:
	FUNC9(master->base);
exit_kfree:
	FUNC10(master);
	master = NULL;
exit:
	return ret;
}