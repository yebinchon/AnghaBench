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
struct TCP_Server_Info {scalar_t__ tcpStatus; int /*<<< orphan*/  req_lock; int /*<<< orphan*/  in_flight; int /*<<< orphan*/  request_q; } ;

/* Variables and functions */
 int const CIFS_ASYNC_OP ; 
 int const CIFS_BLOCKING_OP ; 
 scalar_t__ CifsExiting ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct TCP_Server_Info*) ; 
 int /*<<< orphan*/  FUNC1 (struct TCP_Server_Info*) ; 
 int /*<<< orphan*/  FUNC2 (struct TCP_Server_Info*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct TCP_Server_Info *server, const int optype,
		      int *credits)
{
	int rc;

	FUNC3(&server->req_lock);
	if (optype == CIFS_ASYNC_OP) {
		/* oplock breaks must not be held up */
		server->in_flight++;
		*credits -= 1;
		FUNC4(&server->req_lock);
		return 0;
	}

	while (1) {
		if (*credits <= 0) {
			FUNC4(&server->req_lock);
			FUNC1(server);
			rc = FUNC5(server->request_q,
						 FUNC2(server, credits));
			FUNC0(server);
			if (rc)
				return rc;
			FUNC3(&server->req_lock);
		} else {
			if (server->tcpStatus == CifsExiting) {
				FUNC4(&server->req_lock);
				return -ENOENT;
			}

			/*
			 * Can not count locking commands against total
			 * as they are allowed to block on server.
			 */

			/* update # of requests on the wire to server */
			if (optype != CIFS_BLOCKING_OP) {
				*credits -= 1;
				server->in_flight++;
			}
			FUNC4(&server->req_lock);
			break;
		}
	}
	return 0;
}