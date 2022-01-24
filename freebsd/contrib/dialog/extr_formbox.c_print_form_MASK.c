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
typedef  int /*<<< orphan*/  WINDOW ;
typedef  int /*<<< orphan*/  DIALOG_FORMITEM ;

/* Variables and functions */
 char menubox_attr ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(WINDOW *win, DIALOG_FORMITEM * item, int total, int scrollamt, int choice)
{
    int n;
    int count = 0;

    for (n = 0; n < total; ++n) {
	count += FUNC0(win, item + n, scrollamt, n == choice);
    }
    if (count) {
	FUNC1(win, menubox_attr | ' ');
	FUNC2(win);
	(void) FUNC3(win);
    }
}