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
typedef  int /*<<< orphan*/  u16 ;
struct bfin_bf54xfb_info {int dummy; } ;

/* Variables and functions */
 int DLENGTH ; 
 int DLEN_18 ; 
 int DLEN_24 ; 
 int /*<<< orphan*/  EPPI_CLIP ; 
 int EPPI_CONTROL ; 
 int /*<<< orphan*/  EPPI_FRAME ; 
 int /*<<< orphan*/  EPPI_FS1P_AVPL ; 
 int /*<<< orphan*/  EPPI_FS1W_HBL ; 
 int /*<<< orphan*/  EPPI_FS2P_LAVF ; 
 int /*<<< orphan*/  EPPI_FS2W_LVB ; 
 int /*<<< orphan*/  EPPI_HCOUNT ; 
 int /*<<< orphan*/  EPPI_HDELAY ; 
 int /*<<< orphan*/  EPPI_LINE ; 
 int /*<<< orphan*/  EPPI_VCOUNT ; 
 int /*<<< orphan*/  EPPI_VDELAY ; 
 int /*<<< orphan*/  LCD_CLK ; 
 int RGB_FMT_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ outp_rgb666 ; 

__attribute__((used)) static void FUNC14(struct bfin_bf54xfb_info *fbi)
{

	u16 eppi_clkdiv = FUNC13(LCD_CLK);

	FUNC5(EPPI_FS1W_HBL);
	FUNC4(EPPI_FS1P_AVPL);
	FUNC7(EPPI_FS2W_LVB);
	FUNC6(EPPI_FS2P_LAVF);
	FUNC0(EPPI_CLIP);

	FUNC3(EPPI_FRAME);
	FUNC10(EPPI_LINE);

	FUNC8(EPPI_HCOUNT);
	FUNC9(EPPI_HDELAY);
	FUNC11(EPPI_VCOUNT);
	FUNC12(EPPI_VDELAY);

	FUNC1(eppi_clkdiv);

/*
 * DLEN = 6 (24 bits for RGB888 out) or 5 (18 bits for RGB666 out)
 * RGB Formatting Enabled for RGB666 output, disabled for RGB888 output
 */
	if (outp_rgb666)
		FUNC2((EPPI_CONTROL & ~DLENGTH) | DLEN_18 |
					 RGB_FMT_EN);
	else
		FUNC2(((EPPI_CONTROL & ~DLENGTH) | DLEN_24) &
					 ~RGB_FMT_EN);


}