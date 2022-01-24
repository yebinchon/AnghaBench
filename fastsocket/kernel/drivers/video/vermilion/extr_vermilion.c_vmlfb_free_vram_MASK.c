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
struct vml_info {int num_areas; int /*<<< orphan*/ * vram; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct vml_info *vinfo)
{
	int i;

	for (i = 0; i < vinfo->num_areas; ++i) {
		FUNC0(&vinfo->vram[i]);
	}
	vinfo->num_areas = 0;
}