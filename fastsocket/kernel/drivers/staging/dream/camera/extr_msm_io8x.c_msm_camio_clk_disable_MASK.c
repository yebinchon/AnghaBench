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
struct clk {int dummy; } ;
typedef  enum msm_camio_clk_type { ____Placeholder_msm_camio_clk_type } msm_camio_clk_type ;

/* Variables and functions */
#define  CAMIO_MDC_CLK 131 
#define  CAMIO_VFE_AXI_CLK 130 
#define  CAMIO_VFE_CLK 129 
#define  CAMIO_VFE_MDC_CLK 128 
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 struct clk* camio_mdc_clk ; 
 struct clk* camio_vfe_axi_clk ; 
 struct clk* camio_vfe_clk ; 
 struct clk* camio_vfe_mdc_clk ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 

int FUNC3(enum msm_camio_clk_type clktype)
{
	int rc = 0;
	struct clk *clk = NULL;

	switch (clktype) {
	case CAMIO_VFE_MDC_CLK:
		clk = camio_vfe_mdc_clk;
		break;

	case CAMIO_MDC_CLK:
		clk = camio_mdc_clk;
		break;

	case CAMIO_VFE_CLK:
		clk = camio_vfe_clk;
		break;

	case CAMIO_VFE_AXI_CLK:
		clk = camio_vfe_axi_clk;
		break;

	default:
		break;
	}

	if (!FUNC0(clk)) {
		FUNC1(clk);
		FUNC2(clk);
	} else
		rc = -1;

	return rc;
}