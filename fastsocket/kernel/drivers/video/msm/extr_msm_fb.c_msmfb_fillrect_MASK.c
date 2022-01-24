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
struct fb_info {int dummy; } ;
struct fb_fillrect {scalar_t__ height; scalar_t__ dy; scalar_t__ width; scalar_t__ dx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fb_info*,struct fb_fillrect const*) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct fb_info *p, const struct fb_fillrect *rect)
{
	FUNC0(p, rect);
	FUNC1(p, rect->dx, rect->dy, rect->dx + rect->width,
		     rect->dy + rect->height);
}