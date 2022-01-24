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
struct TYPE_4__ {int tearsync_mode; int tearsync_pin_cnt; TYPE_1__* fbdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RFBI_CONFIG0 ; 
 int /*<<< orphan*/  RFBI_LINE_NUMBER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,unsigned int,int) ; 
 TYPE_2__ rfbi ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC4(int enable, unsigned line)
{
	u32 l;

	FUNC0(rfbi.fbdev->dev, "tearsync %d line %d mode %d\n",
		enable, line, rfbi.tearsync_mode);
	if (line > (1 << 11) - 1)
		return -EINVAL;

	FUNC1(1);
	l = FUNC2(RFBI_CONFIG0);
	l &= ~(0x3 << 2);
	if (enable) {
		rfbi.tearsync_mode = rfbi.tearsync_pin_cnt;
		l |= rfbi.tearsync_mode << 2;
	} else
		rfbi.tearsync_mode = 0;
	FUNC3(RFBI_CONFIG0, l);
	FUNC3(RFBI_LINE_NUMBER, line);
	FUNC1(0);

	return 0;
}