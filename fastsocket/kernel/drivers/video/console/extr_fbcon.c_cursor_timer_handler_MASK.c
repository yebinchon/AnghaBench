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
struct fbcon_ops {int /*<<< orphan*/  cursor_timer; } ;
struct fb_info {int /*<<< orphan*/  queue; struct fbcon_ops* fbcon_par; } ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(unsigned long dev_addr)
{
	struct fb_info *info = (struct fb_info *) dev_addr;
	struct fbcon_ops *ops = info->fbcon_par;

	FUNC1(&info->queue);
	FUNC0(&ops->cursor_timer, jiffies + HZ/5);
}