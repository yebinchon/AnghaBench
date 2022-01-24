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
struct TYPE_2__ {int /*<<< orphan*/  nocancel; } ;
typedef  int /*<<< orphan*/  DIALOG_VARS ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__ dialog_vars ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(int button)
{
    int result;
    DIALOG_VARS save;

    FUNC2(&save);
    dialog_vars.nocancel = TRUE;

    result = FUNC0(button);

    FUNC1(&save);

    return result;
}