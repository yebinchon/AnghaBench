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

/* Variables and functions */
 scalar_t__ ERR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static bool
FUNC2(WINDOW *win, int scrollamt, int y, int x)
{
    return FUNC0(win, scrollamt, y)
	&& (FUNC1(win, y - scrollamt, x) != ERR);
}