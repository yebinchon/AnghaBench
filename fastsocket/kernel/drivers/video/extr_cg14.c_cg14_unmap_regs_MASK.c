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
struct of_device {int /*<<< orphan*/ * resource; } ;
struct TYPE_2__ {int smem_len; } ;
struct fb_info {TYPE_1__ fix; scalar_t__ screen_base; } ;
struct cg14_regs {int dummy; } ;
struct cg14_par {scalar_t__ cursor; scalar_t__ clut; scalar_t__ regs; } ;
struct cg14_cursor {int dummy; } ;
struct cg14_clut {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int) ; 

__attribute__((used)) static void FUNC1(struct of_device *op, struct fb_info *info,
			    struct cg14_par *par)
{
	if (par->regs)
		FUNC0(&op->resource[0],
			   par->regs, sizeof(struct cg14_regs));
	if (par->clut)
		FUNC0(&op->resource[0],
			   par->clut, sizeof(struct cg14_clut));
	if (par->cursor)
		FUNC0(&op->resource[0],
			   par->cursor, sizeof(struct cg14_cursor));
	if (info->screen_base)
		FUNC0(&op->resource[1],
			   info->screen_base, info->fix.smem_len);
}