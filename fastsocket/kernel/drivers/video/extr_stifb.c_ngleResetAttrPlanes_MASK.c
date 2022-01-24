#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {int xres; int yres; } ;
struct TYPE_4__ {TYPE_1__ var; } ;
struct stifb_info {scalar_t__ id; TYPE_2__ info; } ;

/* Variables and functions */
 int /*<<< orphan*/  AddrLong ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BINattr ; 
 int /*<<< orphan*/  BitmapExtent08 ; 
 int /*<<< orphan*/  DataDynamic ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct stifb_info*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IndexedDcd ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MaskOtc ; 
 int /*<<< orphan*/  FUNC8 (struct stifb_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct stifb_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct stifb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct stifb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct stifb_info*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct stifb_info*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct stifb_info*) ; 
 int /*<<< orphan*/  Otc32 ; 
 int /*<<< orphan*/  OtsIndirect ; 
 int /*<<< orphan*/  RopSrc ; 
 scalar_t__ S9000_ID_A1659A ; 
 int /*<<< orphan*/  FUNC15 (struct stifb_info*,int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 

__attribute__((used)) static void
FUNC17(struct stifb_info *fb, unsigned int ctlPlaneReg)
{
	int nFreeFifoSlots = 0;
	u32 packed_dst;
	u32 packed_len;

	FUNC8(fb);

	FUNC5(fb, nFreeFifoSlots, 4);
	FUNC10(fb, 
				     FUNC0(IndexedDcd, Otc32, OtsIndirect,
					AddrLong, FUNC2(0),
					BINattr, FUNC1(0)));
	FUNC9(fb, ctlPlaneReg);
	FUNC13(fb, 0xffffffff);

	FUNC11(fb,
				       FUNC6(RopSrc, FUNC7(0),
					       BitmapExtent08, FUNC16(1),
					       DataDynamic, MaskOtc,
					       FUNC3(0), FUNC4(0)));
	packed_dst = 0;
	packed_len = (fb->info.var.xres << 16) | fb->info.var.yres;
	FUNC5(fb, nFreeFifoSlots, 2);
	FUNC12(fb, packed_dst);
	FUNC15(fb, packed_len);

	/*
	 * In order to work around an ELK hardware problem (Buffy doesn't
	 * always flush it's buffers when writing to the attribute
	 * planes), at least 4 pixels must be written to the attribute
	 * planes starting at (X == 1280) and (Y != to the last Y written
	 * by BIF):
	 */

	if (fb->id == S9000_ID_A1659A) {   /* ELK_DEVICE_ID */
		/* It's safe to use scanline zero: */
		packed_dst = (1280 << 16);
		FUNC5(fb, nFreeFifoSlots, 2);
		FUNC12(fb, packed_dst);
		packed_len = (4 << 16) | 1;
		FUNC15(fb, packed_len);
	}   /* ELK Hardware Kludge */

	/**** Finally, set the Control Plane Register back to zero: ****/
	FUNC5(fb, nFreeFifoSlots, 1);
	FUNC9(fb, 0);
	
	FUNC14(fb);
}