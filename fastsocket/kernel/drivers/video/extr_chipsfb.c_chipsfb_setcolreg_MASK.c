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
typedef  int u_int ;
struct fb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(u_int regno, u_int red, u_int green, u_int blue,
			     u_int transp, struct fb_info *info)
{
	if (regno > 255)
		return 1;
	red >>= 8;
	green >>= 8;
	blue >>= 8;
	FUNC0(regno, 0x3c8);
	FUNC1(1);
	FUNC0(red, 0x3c9);
	FUNC0(green, 0x3c9);
	FUNC0(blue, 0x3c9);

	return 0;
}