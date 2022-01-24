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
typedef  int /*<<< orphan*/  journal_t ;
struct TYPE_6__ {int h_sync; } ;
typedef  TYPE_1__ handle_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (TYPE_1__*) ; 

int FUNC4(journal_t *journal)
{
	handle_t *handle;
	int ret;

	handle = FUNC2(journal, 1);
	if (FUNC0(handle)) {
		ret = FUNC1(handle);
	} else {
		handle->h_sync = 1;
		ret = FUNC3(handle);
	}
	return ret;
}