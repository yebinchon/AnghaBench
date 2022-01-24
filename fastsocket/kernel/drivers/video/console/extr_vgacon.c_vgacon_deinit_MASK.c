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
struct vc_data {int /*<<< orphan*/  vc_uni_pagedir; int /*<<< orphan*/ * vc_uni_pagedir_loc; int /*<<< orphan*/  vc_visible_origin; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct vc_data*) ; 
 int /*<<< orphan*/  vga_vram_base ; 
 int /*<<< orphan*/ * vgacon_uni_pagedir ; 

__attribute__((used)) static void FUNC4(struct vc_data *c)
{
	/* When closing the active console, reset video origin */
	if (FUNC0(c)) {
		c->vc_visible_origin = vga_vram_base;
		FUNC3(c);
	}

	if (!--vgacon_uni_pagedir[1])
		FUNC1(c);
	c->vc_uni_pagedir_loc = &c->vc_uni_pagedir;
	FUNC2(c);
}