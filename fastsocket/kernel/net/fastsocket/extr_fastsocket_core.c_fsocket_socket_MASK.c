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
struct socket_alloc {int dummy; } ;
struct socket {int /*<<< orphan*/  type; } ;
struct TYPE_4__ {TYPE_1__* nsproxy; } ;
struct TYPE_3__ {int /*<<< orphan*/  net_ns; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ERR ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  PF_INET ; 
 int SOCK_CLOEXEC ; 
 int SOCK_NONBLOCK ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 TYPE_2__* current ; 
 int FUNC1 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*) ; 
 struct socket* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct socket_alloc*) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(int flags)
{
	struct socket *sock;
	int fd;

	int err = 0;

	if (flags & ~(SOCK_CLOEXEC | SOCK_NONBLOCK)) {
		FUNC0(ERR, "Unsupported Socket Flags For Fastsocket\n");
		err = -EINVAL;
		goto out;
	}

	sock = FUNC3();
	if (sock == NULL) {
		FUNC0(ERR, "Allocate New Socket failed\n");
		err = -ENOMEM;
		goto out;
	}

	sock->type = SOCK_STREAM;

	err = FUNC7(current->nsproxy->net_ns, sock, 0, 0);
	if (err < 0) {
		FUNC0(ERR, "Initialize Inet Socket failed\n");
		goto free_sock;
	}

	FUNC6(sock);

	fd = FUNC1(sock, flags);
	if (fd < 0) {
		err = fd;
		FUNC0(ERR, "Map Socket FD failed\n");
		goto release_sock;
	}

	err = FUNC8(sock, PF_INET, SOCK_STREAM, IPPROTO_TCP, 0);
	if (err) {
		FUNC0(ERR, "security_socket_post_create failed\n");
		FUNC4(fd);
		return err;
	}

	return fd;

release_sock:
	FUNC2(sock);
free_sock:
	FUNC5((struct socket_alloc*)sock);
out:
	return err;
}