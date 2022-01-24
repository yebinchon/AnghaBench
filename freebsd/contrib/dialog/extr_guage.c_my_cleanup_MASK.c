#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  win; } ;
struct TYPE_6__ {scalar_t__ prompt; scalar_t__ prompt_buf; scalar_t__ title; TYPE_1__ obj; } ;
typedef  TYPE_2__ MY_OBJ ;
typedef  int /*<<< orphan*/  DIALOG_CALLBACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC4(DIALOG_CALLBACK * cb)
{
    MY_OBJ *obj = (MY_OBJ *) cb;

    if (FUNC3(obj)) {
	if (obj->prompt != obj->prompt_buf) {
	    FUNC2(obj->prompt);
	    obj->prompt = obj->prompt_buf;
	}
	FUNC2(obj->title);
	FUNC1(obj->obj.win);
	FUNC0(obj);
    }
}