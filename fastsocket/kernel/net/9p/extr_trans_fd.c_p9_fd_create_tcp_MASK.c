#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct socket {TYPE_2__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct p9_trans_fd {int /*<<< orphan*/ * conn; } ;
struct p9_fd_opts {int /*<<< orphan*/  port; } ;
struct p9_client {scalar_t__ trans; } ;
struct TYPE_4__ {int (* connect ) (struct socket*,struct sockaddr*,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  PF_INET ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct p9_trans_fd*) ; 
 int /*<<< orphan*/ * FUNC6 (struct p9_client*) ; 
 int FUNC7 (struct p9_client*,struct socket*) ; 
 int FUNC8 (char*,struct p9_fd_opts*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct socket**) ; 
 int /*<<< orphan*/  FUNC10 (struct socket*) ; 
 int FUNC11 (struct socket*,struct sockaddr*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (char const*) ; 

__attribute__((used)) static int
FUNC13(struct p9_client *client, const char *addr, char *args)
{
	int err;
	struct socket *csocket;
	struct sockaddr_in sin_server;
	struct p9_fd_opts opts;
	struct p9_trans_fd *p = NULL; /* this gets allocated in p9_fd_open */

	err = FUNC8(args, &opts);
	if (err < 0)
		return err;

	if (FUNC12(addr) < 0)
		return -EINVAL;

	csocket = NULL;

	sin_server.sin_family = AF_INET;
	sin_server.sin_addr.s_addr = FUNC4(addr);
	sin_server.sin_port = FUNC3(opts.port);
	FUNC9(PF_INET, SOCK_STREAM, IPPROTO_TCP, &csocket);

	if (!csocket) {
		FUNC1(KERN_ERR, "p9_trans_tcp: problem creating socket\n");
		err = -EIO;
		goto error;
	}

	err = csocket->ops->connect(csocket,
				    (struct sockaddr *)&sin_server,
				    sizeof(struct sockaddr_in), 0);
	if (err < 0) {
		FUNC1(KERN_ERR,
			"p9_trans_tcp: problem connecting socket to %s\n",
			addr);
		goto error;
	}

	err = FUNC7(client, csocket);
	if (err < 0)
		goto error;

	p = (struct p9_trans_fd *) client->trans;
	p->conn = FUNC6(client);
	if (FUNC0(p->conn)) {
		err = FUNC2(p->conn);
		p->conn = NULL;
		goto error;
	}

	return 0;

error:
	if (csocket)
		FUNC10(csocket);

	FUNC5(p);

	return err;
}