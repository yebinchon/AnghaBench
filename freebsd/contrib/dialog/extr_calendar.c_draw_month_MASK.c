#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tm {int tm_mon; } ;
struct TYPE_3__ {int /*<<< orphan*/  window; scalar_t__ width; scalar_t__ height; scalar_t__ x; scalar_t__ y; int /*<<< orphan*/  parent; } ;
typedef  TYPE_1__ BOX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  dialog_attr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  item_attr ; 
 int /*<<< orphan*/  menubox_attr ; 
 int /*<<< orphan*/  menubox_border2_attr ; 
 int /*<<< orphan*/  menubox_border_attr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(BOX * data, struct tm *current)
{
    int month;

    month = current->tm_mon + 1;

    FUNC1(data->parent, dialog_attr);	/* Headline "Month" */
    (void) FUNC3(data->parent, data->y - 2, data->x - 1, FUNC0("Month"));
    FUNC2(data->parent,
		  data->y - 1, data->x - 1,
		  data->height + 2, data->width + 2,
		  menubox_attr,
		  menubox_border_attr,
		  menubox_border2_attr);
    FUNC1(data->window, item_attr);	/* color the month selection */
    FUNC3(data->window, 0, 0, "%s", FUNC4(month - 1));
    FUNC5(data->window, 0, 0);
    return 0;
}