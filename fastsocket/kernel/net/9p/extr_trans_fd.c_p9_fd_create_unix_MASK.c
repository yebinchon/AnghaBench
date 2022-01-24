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
struct socket {TYPE_1__* ops; } ;
struct sockaddr_un {int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;
struct p9_trans_fd {int /*<<< orphan*/ * conn; } ;
struct p9_client {scalar_t__ trans; } ;
struct TYPE_2__ {int (* connect ) (struct socket*,struct sockaddr*,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  PF_UNIX ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ UNIX_PATH_MAX ; 
 int /*<<< orphan*/  FUNC3 (struct p9_trans_fd*) ; 
 int /*<<< orphan*/ * FUNC4 (struct p9_client*) ; 
 int FUNC5 (struct p9_client*,struct socket*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct socket**) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC9 (char const*) ; 
 int FUNC10 (struct socket*,struct sockaddr*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct p9_client *client, const char *addr, char *args)
{
	int err;
	struct socket *csocket;
	struct sockaddr_un sun_server;
	struct p9_trans_fd *p = NULL; /* this gets allocated in p9_fd_open */

	csocket = NULL;

	if (FUNC9(addr) > UNIX_PATH_MAX) {
		FUNC1(KERN_ERR, "p9_trans_unix: address too long: %s\n",
			addr);
		err = -ENAMETOOLONG;
		goto error;
	}

	sun_server.sun_family = PF_UNIX;
	FUNC8(sun_server.sun_path, addr);
	FUNC6(PF_UNIX, SOCK_STREAM, 0, &csocket);
	err = csocket->ops->connect(csocket, (struct sockaddr *)&sun_server,
			sizeof(struct sockaddr_un) - 1, 0);
	if (err < 0) {
		FUNC1(KERN_ERR,
			"p9_trans_unix: problem connecting socket: %s: %d\n",
			addr, err);
		goto error;
	}

	err = FUNC5(client, csocket);
	if (err < 0)
		goto error;

	p = (struct p9_trans_fd *) client->trans;
	p->conn = FUNC4(client);
	if (FUNC0(p->conn)) {
		err = FUNC2(p->conn);
		p->conn = NULL;
		goto error;
	}

	return 0;

error:
	if (csocket)
		FUNC7(csocket);

	FUNC3(p);
	return err;
}