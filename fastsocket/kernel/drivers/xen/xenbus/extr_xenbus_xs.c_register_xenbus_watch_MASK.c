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
typedef  int /*<<< orphan*/  watch ;
struct xenbus_watch {int /*<<< orphan*/  list; int /*<<< orphan*/  node; } ;
struct TYPE_2__ {int /*<<< orphan*/  watch_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EEXIST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  watches ; 
 int /*<<< orphan*/  watches_lock ; 
 TYPE_1__ xs_state ; 
 int FUNC9 (int /*<<< orphan*/ ,char*) ; 

int FUNC10(struct xenbus_watch *watch)
{
	/* Pointer in ascii is the token. */
	char token[sizeof(watch) * 2 + 1];
	int err;

	FUNC7(token, "%lX", (long)watch);

	FUNC1(&xs_state.watch_mutex);

	FUNC5(&watches_lock);
	FUNC0(FUNC2(token));
	FUNC3(&watch->list, &watches);
	FUNC6(&watches_lock);

	err = FUNC9(watch->node, token);

	/* Ignore errors due to multiple registration. */
	if ((err != 0) && (err != -EEXIST)) {
		FUNC5(&watches_lock);
		FUNC4(&watch->list);
		FUNC6(&watches_lock);
	}

	FUNC8(&xs_state.watch_mutex);

	return err;
}