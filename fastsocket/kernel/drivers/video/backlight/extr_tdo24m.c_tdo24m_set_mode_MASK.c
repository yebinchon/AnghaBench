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
struct tdo24m {int mode; int (* adj_mode ) (struct tdo24m*,int) ;} ;
struct lcd_device {int dummy; } ;
struct fb_videomode {int xres; } ;

/* Variables and functions */
 int MODE_QVGA ; 
 int MODE_VGA ; 
 struct tdo24m* FUNC0 (struct lcd_device*) ; 
 int FUNC1 (struct tdo24m*,int) ; 

__attribute__((used)) static int FUNC2(struct lcd_device *ld, struct fb_videomode *m)
{
	struct tdo24m *lcd = FUNC0(ld);
	int mode = MODE_QVGA;

	if (m->xres == 640 || m->xres == 480)
		mode = MODE_VGA;

	if (lcd->mode == mode)
		return 0;

	return lcd->adj_mode(lcd, mode);
}