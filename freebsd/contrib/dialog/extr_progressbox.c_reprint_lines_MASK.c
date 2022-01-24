#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  text; } ;
typedef  TYPE_1__ MY_OBJ ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (TYPE_1__*,int) ; 

__attribute__((used)) static int
FUNC5(MY_OBJ * obj, int buttons)
{
    int want = FUNC0(obj->text) - (buttons ? 2 : 0);
    int have = FUNC4(obj, want);
    int n;
    for (n = 0; n < have; ++n) {
	FUNC1(obj, FUNC3(obj, have - n), n);
    }
    (void) FUNC2(obj->text);
    return have;
}