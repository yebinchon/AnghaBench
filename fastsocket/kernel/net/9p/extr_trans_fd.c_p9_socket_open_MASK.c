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
struct socket {TYPE_2__* sk; } ;
struct p9_trans_fd {TYPE_1__* rd; } ;
struct p9_client {scalar_t__ trans; } ;
struct TYPE_4__ {int /*<<< orphan*/  sk_allocation; } ;
struct TYPE_3__ {int /*<<< orphan*/  f_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct p9_client*,int,int) ; 
 int FUNC2 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 

__attribute__((used)) static int FUNC4(struct p9_client *client, struct socket *csocket)
{
	int fd, ret;

	csocket->sk->sk_allocation = GFP_NOIO;
	fd = FUNC2(csocket, 0);
	if (fd < 0) {
		FUNC0(KERN_ERR, "p9_socket_open: failed to map fd\n");
		return fd;
	}

	ret = FUNC1(client, fd, fd);
	if (ret < 0) {
		FUNC0(KERN_ERR, "p9_socket_open: failed to open fd\n");
		FUNC3(csocket);
		return ret;
	}

	((struct p9_trans_fd *)client->trans)->rd->f_flags |= O_NONBLOCK;

	return 0;
}