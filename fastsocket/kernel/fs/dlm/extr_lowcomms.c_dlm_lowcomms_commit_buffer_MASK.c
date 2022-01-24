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
struct writequeue_entry {int users; scalar_t__ offset; scalar_t__ end; scalar_t__ len; struct connection* con; } ;
struct connection {int /*<<< orphan*/  writequeue_lock; int /*<<< orphan*/  swork; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CF_WRITE_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  send_workqueue ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(void *mh)
{
	struct writequeue_entry *e = (struct writequeue_entry *)mh;
	struct connection *con = e->con;
	int users;

	FUNC1(&con->writequeue_lock);
	users = --e->users;
	if (users)
		goto out;
	e->len = e->end - e->offset;
	FUNC2(&con->writequeue_lock);

	if (!FUNC3(CF_WRITE_PENDING, &con->flags)) {
		FUNC0(send_workqueue, &con->swork);
	}
	return;

out:
	FUNC2(&con->writequeue_lock);
	return;
}