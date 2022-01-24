#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dai {int dummy; } ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct platform_device {int dummy; } ;
struct au1xpsc_audio_data {int dummy; } ;
struct TYPE_9__ {int cfg; struct TYPE_9__* ioarea; int /*<<< orphan*/  mmio; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 unsigned long PSC_CTRL_DISABLE ; 
 int PSC_I2SCFG_RT_FIFO8 ; 
 int PSC_I2SCFG_TT_FIFO8 ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 unsigned long PSC_SEL_CLK_MASK ; 
 unsigned long PSC_SEL_PS_I2SMODE ; 
 TYPE_1__* au1xpsc_i2s_workdata ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 TYPE_1__* FUNC8 (int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 TYPE_1__* FUNC11 (scalar_t__,scalar_t__,char*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev,
			     struct snd_soc_dai *dai)
{
	struct resource *r;
	unsigned long sel;
	int ret;

	if (au1xpsc_i2s_workdata)
		return -EBUSY;

	au1xpsc_i2s_workdata =
		FUNC8(sizeof(struct au1xpsc_audio_data), GFP_KERNEL);
	if (!au1xpsc_i2s_workdata)
		return -ENOMEM;

	r = FUNC9(pdev, IORESOURCE_MEM, 0);
	if (!r) {
		ret = -ENODEV;
		goto out0;
	}

	ret = -EBUSY;
	au1xpsc_i2s_workdata->ioarea =
		FUNC11(r->start, r->end - r->start + 1,
					"au1xpsc_i2s");
	if (!au1xpsc_i2s_workdata->ioarea)
		goto out0;

	au1xpsc_i2s_workdata->mmio = FUNC6(r->start, 0xffff);
	if (!au1xpsc_i2s_workdata->mmio)
		goto out1;

	/* preserve PSC clock source set up by platform (dev.platform_data
	 * is already occupied by soc layer)
	 */
	sel = FUNC3(FUNC2(au1xpsc_i2s_workdata)) & PSC_SEL_CLK_MASK;
	FUNC5(PSC_CTRL_DISABLE, FUNC1(au1xpsc_i2s_workdata));
	FUNC4();
	FUNC5(PSC_SEL_PS_I2SMODE | sel, FUNC2(au1xpsc_i2s_workdata));
	FUNC5(0, FUNC0(au1xpsc_i2s_workdata));
	FUNC4();

	/* preconfigure: set max rx/tx fifo depths */
	au1xpsc_i2s_workdata->cfg |=
			PSC_I2SCFG_RT_FIFO8 | PSC_I2SCFG_TT_FIFO8;

	/* don't wait for I2S core to become ready now; clocks may not
	 * be running yet; depending on clock input for PSC a wait might
	 * time out.
	 */

	return 0;

out1:
	FUNC10(au1xpsc_i2s_workdata->ioarea);
	FUNC7(au1xpsc_i2s_workdata->ioarea);
out0:
	FUNC7(au1xpsc_i2s_workdata);
	au1xpsc_i2s_workdata = NULL;
	return ret;
}