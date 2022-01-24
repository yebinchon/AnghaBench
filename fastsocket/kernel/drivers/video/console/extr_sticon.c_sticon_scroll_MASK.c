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
struct vc_data {int /*<<< orphan*/  vc_video_erase_char; int /*<<< orphan*/  vc_cols; } ;
struct sti_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_ERASE ; 
#define  SM_DOWN 129 
#define  SM_UP 128 
 int /*<<< orphan*/  FUNC0 (struct sti_struct*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sti_struct*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vc_data*,int /*<<< orphan*/ ) ; 
 struct sti_struct* sticon_sti ; 
 scalar_t__ vga_is_gfx ; 

__attribute__((used)) static int FUNC3(struct vc_data *conp, int t, int b, int dir, int count)
{
    struct sti_struct *sti = sticon_sti;

    if (vga_is_gfx)
        return 0;

    FUNC2(conp, CM_ERASE);

    switch (dir) {
    case SM_UP:
	FUNC0(sti, t + count, 0, t, 0, b - t - count, conp->vc_cols);
	FUNC1(sti, b - count, 0, count, conp->vc_cols, conp->vc_video_erase_char);
	break;

    case SM_DOWN:
	FUNC0(sti, t, 0, t + count, 0, b - t - count, conp->vc_cols);
	FUNC1(sti, t, 0, count, conp->vc_cols, conp->vc_video_erase_char);
	break;
    }

    return 0;
}