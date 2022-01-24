#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct fb_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct aafb_info {TYPE_1__ cursor; int /*<<< orphan*/  disp; int /*<<< orphan*/  bt455; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_ERASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int,int) ; 

__attribute__((used)) static void FUNC2(int blank, struct fb_info *info)
{
	struct aafb_info *ip = (struct aafb_info *)info;
	u8 val = blank ? 0x00 : 0x0f;

	FUNC1(ip->bt455, 1, val, val, val);
	FUNC0(&ip->disp, CM_ERASE, ip->cursor.x, ip->cursor.y);
}