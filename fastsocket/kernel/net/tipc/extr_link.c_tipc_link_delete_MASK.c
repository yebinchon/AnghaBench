#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct link* buf; } ;
struct link {int /*<<< orphan*/  timer; int /*<<< orphan*/  owner; TYPE_1__ print_buf; int /*<<< orphan*/  link_list; } ;

/* Variables and functions */
 scalar_t__ LINK_LOG_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct link*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct link*) ; 
 int /*<<< orphan*/  FUNC7 (struct link*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct link*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(struct link *l_ptr)
{
	if (!l_ptr) {
		FUNC1("Attempt to delete non-existent link\n");
		return;
	}

	FUNC0("tipc_link_delete()\n");

	FUNC2(&l_ptr->timer);

	FUNC9(l_ptr->owner);
	FUNC6(l_ptr);
	FUNC8(l_ptr->owner, l_ptr);
	FUNC7(l_ptr);
	FUNC5(&l_ptr->link_list);
	if (LINK_LOG_BUF_SIZE)
		FUNC4(l_ptr->print_buf.buf);
	FUNC10(l_ptr->owner);
	FUNC3(&l_ptr->timer);
	FUNC4(l_ptr);
}