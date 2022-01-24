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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct wusbhc {int dummy; } ;
struct whc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WUSBGENCMDSTS_MMCIE_RM ; 
 int FUNC0 (struct whc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct whc* FUNC1 (struct wusbhc*) ; 

int FUNC2(struct wusbhc *wusbhc, u8 handle)
{
	struct whc *whc = FUNC1(wusbhc);
	u32 params;

	params = handle;

	return FUNC0(whc, WUSBGENCMDSTS_MMCIE_RM, params, NULL, 0);
}