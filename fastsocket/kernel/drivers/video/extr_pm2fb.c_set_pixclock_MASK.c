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
typedef  int u32 ;
struct pm2fb_par {int type; } ;

/* Variables and functions */
 int PM2F_PLL_LOCKED ; 
 int /*<<< orphan*/  PM2I_RD_PIXEL_CLOCK_A1 ; 
 int /*<<< orphan*/  PM2I_RD_PIXEL_CLOCK_A2 ; 
 int /*<<< orphan*/  PM2I_RD_PIXEL_CLOCK_A3 ; 
 int /*<<< orphan*/  PM2I_RD_PIXEL_CLOCK_STATUS ; 
 int /*<<< orphan*/  PM2R_RD_INDEXED_DATA ; 
 int PM2VI_RD_CLK0_FEEDBACK ; 
 int PM2VI_RD_CLK0_POSTSCALE ; 
 int PM2VI_RD_CLK0_PRESCALE ; 
 int /*<<< orphan*/  PM2VR_RD_INDEX_HIGH ; 
#define  PM2_TYPE_PERMEDIA2 129 
#define  PM2_TYPE_PERMEDIA2V 128 
 int /*<<< orphan*/  FUNC0 (struct pm2fb_par*,int) ; 
 int FUNC1 (struct pm2fb_par*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pm2fb_par*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pm2fb_par*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pm2fb_par*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,unsigned char*,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (struct pm2fb_par*,int,unsigned char) ; 
 int /*<<< orphan*/  FUNC7 (int,unsigned char*,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(struct pm2fb_par *par, u32 clk)
{
	int i;
	unsigned char m, n, p;

	switch (par->type) {
	case PM2_TYPE_PERMEDIA2:
		FUNC5(clk, &m, &n, &p);
		FUNC0(par, 10);
		FUNC3(par, PM2I_RD_PIXEL_CLOCK_A3, 0);
		FUNC3(par, PM2I_RD_PIXEL_CLOCK_A1, m);
		FUNC3(par, PM2I_RD_PIXEL_CLOCK_A2, n);
		FUNC3(par, PM2I_RD_PIXEL_CLOCK_A3, 8|p);
		FUNC2(par, PM2I_RD_PIXEL_CLOCK_STATUS);
		FUNC8();
		for (i = 256; i; i--)
			if (FUNC1(par, PM2R_RD_INDEXED_DATA) & PM2F_PLL_LOCKED)
				break;
		break;
	case PM2_TYPE_PERMEDIA2V:
		FUNC7(clk/2, &m, &n, &p);
		FUNC0(par, 8);
		FUNC4(par, PM2VR_RD_INDEX_HIGH, PM2VI_RD_CLK0_PRESCALE >> 8);
		FUNC6(par, PM2VI_RD_CLK0_PRESCALE, m);
		FUNC6(par, PM2VI_RD_CLK0_FEEDBACK, n);
		FUNC6(par, PM2VI_RD_CLK0_POSTSCALE, p);
		FUNC4(par, PM2VR_RD_INDEX_HIGH, 0);
		break;
	}
}