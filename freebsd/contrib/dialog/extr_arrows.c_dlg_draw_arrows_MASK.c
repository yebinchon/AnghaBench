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
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  menubox_border2_attr ; 
 int /*<<< orphan*/  menubox_border_attr ; 

void
FUNC2(WINDOW *win,
		int top_arrow,
		int bottom_arrow,
		int x,
		int top,
		int bottom)
{
    FUNC1(win, TRUE);
    FUNC0(win,
		     top_arrow,
		     bottom_arrow,
		     x,
		     top,
		     bottom,
		     menubox_border2_attr,
		     menubox_border_attr);
}