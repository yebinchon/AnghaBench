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
struct sockaddr {int dummy; } ;
struct lsock_port {scalar_t__ type; int /*<<< orphan*/  peers; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int stream; int cred; int peerlen; int fd; int /*<<< orphan*/ * id; struct sockaddr* peer; } ;
struct lsock_peer {TYPE_1__ input; int /*<<< orphan*/  peer; struct lsock_port* port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct lsock_peer*,int /*<<< orphan*/ ) ; 
 scalar_t__ LOCP_DGRAM_PRIV ; 
 scalar_t__ LOCP_STREAM_PRIV ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int FUNC1 (int,struct sockaddr*,int*) ; 
 struct lsock_peer* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ,struct lsock_peer*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct lsock_peer*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  lsock_input ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(int fd, void *udata)
{
	struct lsock_port *p = udata;
	struct lsock_peer *peer;

	if ((peer = FUNC2(1, sizeof(*peer))) == NULL) {
		FUNC6(LOG_WARNING, "%s: peer malloc failed", p->name);
		(void)FUNC3(FUNC1(fd, NULL, NULL));
		return;
	}

	peer->port = p;

	peer->input.stream = 1;
	peer->input.cred = (p->type == LOCP_DGRAM_PRIV ||
	    p->type == LOCP_STREAM_PRIV);
	peer->input.peerlen = sizeof(peer->peer);
	peer->input.peer = (struct sockaddr *)&peer->peer;

	peer->input.fd = FUNC1(fd, peer->input.peer, &peer->input.peerlen);
	if (peer->input.fd == -1) {
		FUNC6(LOG_WARNING, "%s: accept failed: %m", p->name);
		FUNC5(peer);
		return;
	}

	if ((peer->input.id = FUNC4(peer->input.fd, lsock_input,
	    peer, NULL)) == NULL) {
		FUNC3(peer->input.fd);
		FUNC5(peer);
		return;
	}

	FUNC0(&p->peers, peer, link);
}