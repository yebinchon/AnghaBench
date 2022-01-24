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
struct sh_mobile_lcdc_priv {int lddckr; int /*<<< orphan*/  dev; int /*<<< orphan*/  hw_usecnt; int /*<<< orphan*/  dot_clk; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
#define  LCDC_CLK_BUS 130 
#define  LCDC_CLK_EXTERNAL 129 
#define  LCDC_CLK_PERIPHERAL 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev,
				       int clock_source,
				       struct sh_mobile_lcdc_priv *priv)
{
	char *str;
	int icksel;

	switch (clock_source) {
	case LCDC_CLK_BUS: str = "bus_clk"; icksel = 0; break;
	case LCDC_CLK_PERIPHERAL: str = "peripheral_clk"; icksel = 1; break;
	case LCDC_CLK_EXTERNAL: str = NULL; icksel = 2; break;
	default:
		return -EINVAL;
	}

	priv->lddckr = icksel << 16;

	if (str) {
		priv->dot_clk = FUNC3(&pdev->dev, str);
		if (FUNC0(priv->dot_clk)) {
			FUNC4(&pdev->dev, "cannot get dot clock %s\n", str);
			return FUNC1(priv->dot_clk);
		}
	}
	FUNC2(&priv->hw_usecnt, -1);

	/* Runtime PM support involves two step for this driver:
	 * 1) Enable Runtime PM
	 * 2) Force Runtime PM Resume since hardware is accessed from probe()
	 */
	FUNC5(priv->dev);
	FUNC6(priv->dev);
	return 0;
}