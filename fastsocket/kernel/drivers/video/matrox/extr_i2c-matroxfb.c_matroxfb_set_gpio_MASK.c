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
struct matrox_fb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAC_XGENIOCTRL ; 
 int /*<<< orphan*/  DAC_XGENIODATA ; 
 int FUNC0 (struct matrox_fb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct matrox_fb_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

__attribute__((used)) static void FUNC4(struct matrox_fb_info* minfo, int mask, int val) {
	unsigned long flags;
	int v;

	FUNC1(flags);
	v = (FUNC0(minfo, DAC_XGENIOCTRL) & mask) | val;
	FUNC2(minfo, DAC_XGENIOCTRL, v);
	/* We must reset GENIODATA very often... XFree plays with this register */
	FUNC2(minfo, DAC_XGENIODATA, 0x00);
	FUNC3(flags);
}