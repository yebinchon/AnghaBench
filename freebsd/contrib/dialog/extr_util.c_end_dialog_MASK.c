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
struct TYPE_2__ {scalar_t__ screen_initialized; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 TYPE_1__ dialog_state ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  stdout ; 

void
FUNC3(void)
{
    if (dialog_state.screen_initialized) {
	dialog_state.screen_initialized = FALSE;
	FUNC2();
	(void) FUNC0();
	(void) FUNC1(stdout);
    }
}