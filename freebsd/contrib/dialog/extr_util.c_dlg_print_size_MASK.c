#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  output; } ;
struct TYPE_3__ {scalar_t__ print_siz; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_2__ dialog_state ; 
 TYPE_1__ dialog_vars ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 

void
FUNC2(int height, int width)
{
    if (dialog_vars.print_siz) {
	FUNC1(dialog_state.output, "Size: %d, %d\n", height, width);
	FUNC0(("# print size: %dx%d\n", height, width));
    }
}