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
struct sti_struct {int font_width; int font_height; int /*<<< orphan*/  lock; int /*<<< orphan*/  glob_cfg; int /*<<< orphan*/  block_move; } ;
struct sti_blkmv_outptr {int /*<<< orphan*/  member_0; } ;
struct sti_blkmv_inptr {int src_x; int src_y; int dest_x; int dest_y; int width; int height; } ;
typedef  int s32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sti_blkmv_inptr*,struct sti_blkmv_outptr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  default_blkmv_flags ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC3(struct sti_struct *sti, int src_y, int src_x,
	  int dst_y, int dst_x, int height, int width)
{
	struct sti_blkmv_inptr inptr = {
		.src_x		= src_x * sti->font_width,
		.src_y		= src_y * sti->font_height,
		.dest_x		= dst_x * sti->font_width,
		.dest_y		= dst_y * sti->font_height,
		.width		= width * sti->font_width,
		.height		= height* sti->font_height,
	};
	struct sti_blkmv_outptr outptr = { 0, };
	s32 ret;
	unsigned long flags;

	do {
		FUNC1(&sti->lock, flags);
		ret = FUNC0(sti->block_move, &default_blkmv_flags,
			&inptr, &outptr, sti->glob_cfg);
		FUNC2(&sti->lock, flags);
	} while (ret == 1);
}