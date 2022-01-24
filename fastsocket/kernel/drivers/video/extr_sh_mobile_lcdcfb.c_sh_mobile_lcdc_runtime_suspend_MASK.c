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
struct sh_mobile_lcdc_priv {int /*<<< orphan*/ * saved_shared_regs; struct sh_mobile_lcdc_chan* ch; } ;
struct sh_mobile_lcdc_chan {int /*<<< orphan*/ * saved_ch_regs; int /*<<< orphan*/  enabled; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sh_mobile_lcdc_chan*) ; 
 int NR_CH_REGS ; 
 int NR_SHARED_REGS ; 
 int /*<<< orphan*/  _LDCNT1R ; 
 int /*<<< orphan*/  FUNC1 (struct sh_mobile_lcdc_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_mobile_lcdc_chan*,int) ; 
 int /*<<< orphan*/ * lcdc_shared_regs ; 
 int /*<<< orphan*/  FUNC3 (struct sh_mobile_lcdc_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sh_mobile_lcdc_priv* FUNC4 (struct platform_device*) ; 
 struct platform_device* FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct platform_device *pdev = FUNC5(dev);
	struct sh_mobile_lcdc_priv *p = FUNC4(pdev);
	struct sh_mobile_lcdc_chan *ch;
	int k, n;

	/* save per-channel registers */
	for (k = 0; k < FUNC0(p->ch); k++) {
		ch = &p->ch[k];
		if (!ch->enabled)
			continue;
		for (n = 0; n < NR_CH_REGS; n++)
			ch->saved_ch_regs[n] = FUNC2(ch, n);
	}

	/* save shared registers */
	for (n = 0; n < NR_SHARED_REGS; n++)
		p->saved_shared_regs[n] = FUNC1(p, lcdc_shared_regs[n]);

	/* turn off LCDC hardware */
	FUNC3(p, _LDCNT1R, 0);
	return 0;
}