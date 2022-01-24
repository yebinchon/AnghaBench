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
struct reada_control {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  elems; int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reada_control_release ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

int FUNC3(void *handle)
{
	struct reada_control *rc = handle;

	while (FUNC0(&rc->elems)) {
		FUNC2(rc->wait, FUNC0(&rc->elems) == 0);
	}

	FUNC1(&rc->refcnt, reada_control_release);

	return 0;
}