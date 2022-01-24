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
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_3__ {int x; int y; int width; int height; int week_start; scalar_t__ window; int /*<<< orphan*/ * parent; int /*<<< orphan*/  box_draw; } ;
typedef  int /*<<< orphan*/  BOX_DRAW ;
typedef  TYPE_1__ BOX ;

/* Variables and functions */
 scalar_t__ KEY_MAX ; 
 scalar_t__ MON_WIDE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__,int,scalar_t__,scalar_t__,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(BOX * data,
	    WINDOW *parent,
	    int x, int y,
	    int width, int height,
	    BOX_DRAW box_draw,
	    int key_offset,
	    int code)
{
    data->parent = parent;
    data->x = x;
    data->y = y;
    data->width = width;
    data->height = height;
    data->box_draw = box_draw;
    data->week_start = key_offset;

    data->window = FUNC0(data->parent,
			  data->height, data->width,
			  data->y, data->x);
    if (data->window == 0)
	return -1;
    (void) FUNC6(data->window, TRUE);

    FUNC3(FUNC4(parent), FUNC5(parent));
    if (code == 'D') {
	FUNC1(y + 1, x + MON_WIDE, height - 1, width - MON_WIDE,
			      KEY_MAX + key_offset, 1, MON_WIDE, 3);
    } else {
	FUNC2(y, x, height, width, code);
    }

    return 0;
}