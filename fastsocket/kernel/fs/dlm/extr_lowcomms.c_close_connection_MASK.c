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
struct connection {int /*<<< orphan*/  sock_mutex; scalar_t__ retries; int /*<<< orphan*/ * rx_page; struct connection* othercon; int /*<<< orphan*/ * sock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct connection *con, bool and_other)
{
	FUNC1(&con->sock_mutex);

	if (con->sock) {
		FUNC3(con->sock);
		con->sock = NULL;
	}
	if (con->othercon && and_other) {
		/* Will only re-enter once. */
		FUNC4(con->othercon, false);
	}
	if (con->rx_page) {
		FUNC0(con->rx_page);
		con->rx_page = NULL;
	}

	con->retries = 0;
	FUNC2(&con->sock_mutex);
}