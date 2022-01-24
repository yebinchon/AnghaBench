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
struct vgastate {int /*<<< orphan*/ * vidstate; } ;
struct regstate {int /*<<< orphan*/  attr; int /*<<< orphan*/  vga_cmap; int /*<<< orphan*/  vga_text; int /*<<< orphan*/  vga_font1; int /*<<< orphan*/  vga_font0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct regstate*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct vgastate *state)
{
	if (state->vidstate != NULL) {
		struct regstate *saved = (struct regstate *) state->vidstate;

		FUNC1(saved->vga_font0);
		FUNC1(saved->vga_font1);
		FUNC1(saved->vga_text);
		FUNC1(saved->vga_cmap);
		FUNC1(saved->attr);
		FUNC0(saved);
		state->vidstate = NULL;
	}
}