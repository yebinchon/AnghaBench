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
struct wusbhc {int dummy; } ;
struct whc {scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  WUSBGENCMDSTS_CHAN_STOP ; 
 scalar_t__ WUSBTIME ; 
 int WUSBTIME_CHANNEL_TIME_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct whc*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct whc*) ; 
 int FUNC4 (struct whc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct whc* FUNC5 (struct wusbhc*) ; 

void FUNC6(struct wusbhc *wusbhc, int delay)
{
	struct whc *whc = FUNC5(wusbhc);
	u32 stop_time, now_time;
	int ret;

	FUNC3(whc);
	FUNC0(whc);

	now_time = FUNC1(whc->base + WUSBTIME) & WUSBTIME_CHANNEL_TIME_MASK;
	stop_time = (now_time + ((delay * 8) << 7)) & 0x00ffffff;
	ret = FUNC4(whc, WUSBGENCMDSTS_CHAN_STOP, stop_time, NULL, 0);
	if (ret == 0)
		FUNC2(delay);
}