#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stat {scalar_t__ st_size; } ;
struct TYPE_4__ {int /*<<< orphan*/ * input; } ;
struct TYPE_5__ {scalar_t__ last_pos; TYPE_1__ obj; } ;
typedef  TYPE_2__ MY_OBJ ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  DIALOG_CALLBACK ;

/* Variables and functions */
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static bool
FUNC3(DIALOG_CALLBACK * cb)
{
    MY_OBJ *obj = (MY_OBJ *) cb;
    FILE *fp = obj->obj.input;
    struct stat sb;

    if (FUNC1(FUNC0(fp), &sb) == 0
	&& sb.st_size != obj->last_pos) {
	FUNC2(obj);
    }

    return TRUE;
}