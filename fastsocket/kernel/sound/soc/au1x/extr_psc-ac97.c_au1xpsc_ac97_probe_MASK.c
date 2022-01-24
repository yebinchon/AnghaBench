#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dai {int dummy; } ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct platform_device {int dummy; } ;
struct au1xpsc_audio_data {int dummy; } ;
struct TYPE_8__ {int cfg; struct TYPE_8__* ioarea; int /*<<< orphan*/  mmio; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int PSC_AC97CFG_DE_ENABLE ; 
 int PSC_AC97CFG_RT_FIFO8 ; 
 int PSC_AC97CFG_TT_FIFO8 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 unsigned long PSC_CTRL_DISABLE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 unsigned long PSC_SEL_CLK_MASK ; 
 unsigned long PSC_SEL_PS_AC97MODE ; 
 TYPE_1__* au1xpsc_ac97_workdata ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 TYPE_1__* FUNC11 (scalar_t__,scalar_t__,char*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev,
			      struct snd_soc_dai *dai)
{
	int ret;
	struct resource *r;
	unsigned long sel;

	if (au1xpsc_ac97_workdata)
		return -EBUSY;

	au1xpsc_ac97_workdata =
		FUNC7(sizeof(struct au1xpsc_audio_data), GFP_KERNEL);
	if (!au1xpsc_ac97_workdata)
		return -ENOMEM;

	FUNC8(&au1xpsc_ac97_workdata->lock);

	r = FUNC9(pdev, IORESOURCE_MEM, 0);
	if (!r) {
		ret = -ENODEV;
		goto out0;
	}

	ret = -EBUSY;
	au1xpsc_ac97_workdata->ioarea =
		FUNC11(r->start, r->end - r->start + 1,
					"au1xpsc_ac97");
	if (!au1xpsc_ac97_workdata->ioarea)
		goto out0;

	au1xpsc_ac97_workdata->mmio = FUNC5(r->start, 0xffff);
	if (!au1xpsc_ac97_workdata->mmio)
		goto out1;

	/* configuration: max dma trigger threshold, enable ac97 */
	au1xpsc_ac97_workdata->cfg = PSC_AC97CFG_RT_FIFO8 |
				     PSC_AC97CFG_TT_FIFO8 |
				     PSC_AC97CFG_DE_ENABLE;

	/* preserve PSC clock source set up by platform (dev.platform_data
	 * is already occupied by soc layer)
	 */
	sel = FUNC2(FUNC1(au1xpsc_ac97_workdata)) & PSC_SEL_CLK_MASK;
	FUNC4(PSC_CTRL_DISABLE, FUNC0(au1xpsc_ac97_workdata));
	FUNC3();
	FUNC4(0, FUNC1(au1xpsc_ac97_workdata));
	FUNC3();
	FUNC4(PSC_SEL_PS_AC97MODE | sel, FUNC1(au1xpsc_ac97_workdata));
	FUNC3();
	/* next up: cold reset.  Dont check for PSC-ready now since
	 * there may not be any codec clock yet.
	 */

	return 0;

out1:
	FUNC10(au1xpsc_ac97_workdata->ioarea);
	FUNC6(au1xpsc_ac97_workdata->ioarea);
out0:
	FUNC6(au1xpsc_ac97_workdata);
	au1xpsc_ac97_workdata = NULL;
	return ret;
}