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
struct vc_data {int /*<<< orphan*/  vc_video_erase_char; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sticon_sti ; 

__attribute__((used)) static void FUNC1(struct vc_data *conp, int sy, int sx, int height,
			 int width)
{
    if (!height || !width)
	return;

    FUNC0(sticon_sti, sy, sx, height, width, conp->vc_video_erase_char);
}