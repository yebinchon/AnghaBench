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
struct sti_struct {int font_width; int font_height; int /*<<< orphan*/  lock; int /*<<< orphan*/  glob_cfg; int /*<<< orphan*/  font_unpmv; TYPE_1__* font; } ;
struct sti_font_outptr {int /*<<< orphan*/  member_0; } ;
struct sti_font_inptr {int dest_x; int dest_y; int /*<<< orphan*/  bg_color; int /*<<< orphan*/  fg_color; int /*<<< orphan*/  index; int /*<<< orphan*/  font_start_addr; } ;
typedef  int s32 ;
struct TYPE_2__ {int /*<<< orphan*/  raw; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sti_font_inptr*,struct sti_font_outptr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sti_struct*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sti_struct*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sti_struct*,int) ; 
 int /*<<< orphan*/  default_font_flags ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC7(struct sti_struct *sti, int c, int y, int x)
{
	struct sti_font_inptr inptr = {
		.font_start_addr= FUNC1(sti->font->raw),
		.index		= FUNC4(sti, c),
		.fg_color	= FUNC3(sti, c),
		.bg_color	= FUNC2(sti, c),
		.dest_x		= x * sti->font_width,
		.dest_y		= y * sti->font_height,
	};
	struct sti_font_outptr outptr = { 0, };
	s32 ret;
	unsigned long flags;

	do {
		FUNC5(&sti->lock, flags);
		ret = FUNC0(sti->font_unpmv, &default_font_flags,
			&inptr, &outptr, sti->glob_cfg);
		FUNC6(&sti->lock, flags);
	} while (ret == 1);
}