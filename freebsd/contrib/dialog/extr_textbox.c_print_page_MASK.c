#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  text; scalar_t__ end_reached; scalar_t__ page_length; } ;
typedef  TYPE_1__ MY_OBJ ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(MY_OBJ * obj, int height, int width)
{
    int i, passed_end = 0;

    obj->page_length = 0;
    for (i = 0; i < height; i++) {
	FUNC1(obj, i, width);
	if (!passed_end)
	    obj->page_length++;
	if (obj->end_reached && !passed_end)
	    passed_end = 1;
    }
    (void) FUNC2(obj->text);
    FUNC0(obj->text);
}