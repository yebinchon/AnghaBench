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
struct bfin_bf54xfb_info {scalar_t__ fb_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  CH_EPPI0 ; 
 int /*<<< orphan*/  DATA_SIZE_32 ; 
 int /*<<< orphan*/  DIMENSION_2D ; 
 int /*<<< orphan*/  DIR_READ ; 
 int DMA_BUS_SIZE ; 
 int /*<<< orphan*/  DMA_FLOW_AUTO ; 
 int /*<<< orphan*/  DMA_NOSYNC_KEEP_DMA_BUF ; 
 int /*<<< orphan*/  INTR_DISABLE ; 
 int LCD_BPP ; 
 int LCD_X_RES ; 
 int /*<<< orphan*/  LCD_Y_RES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct bfin_bf54xfb_info *fbi)
{

	FUNC1(CH_EPPI0,
		       FUNC0(DIR_READ, DMA_FLOW_AUTO,
					   INTR_DISABLE, DIMENSION_2D,
					   DATA_SIZE_32,
					   DMA_NOSYNC_KEEP_DMA_BUF));
	FUNC3(CH_EPPI0, (LCD_X_RES * LCD_BPP) / DMA_BUS_SIZE);
	FUNC4(CH_EPPI0, DMA_BUS_SIZE / 8);
	FUNC5(CH_EPPI0, LCD_Y_RES);
	FUNC6(CH_EPPI0, DMA_BUS_SIZE / 8);
	FUNC2(CH_EPPI0, (unsigned long)fbi->fb_buffer);

	return 0;
}