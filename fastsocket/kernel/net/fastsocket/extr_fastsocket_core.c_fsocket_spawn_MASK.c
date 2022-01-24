#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct socket {TYPE_2__* ops; TYPE_4__* sk; } ;
struct TYPE_5__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct file {scalar_t__ private_data; int /*<<< orphan*/  sub_file; } ;
typedef  int /*<<< orphan*/  kernel_cap_t ;
typedef  int /*<<< orphan*/  addr ;
struct TYPE_8__ {scalar_t__ sk_state; int sk_max_ack_backlog; } ;
struct TYPE_7__ {int /*<<< orphan*/  saddr; int /*<<< orphan*/  sport; } ;
struct TYPE_6__ {int (* bind ) (struct socket*,struct sockaddr*,int) ;int (* listen ) (struct socket*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int EEXIST ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ERR ; 
 int /*<<< orphan*/  INFO ; 
 scalar_t__ TCP_LISTEN ; 
 int /*<<< orphan*/  fastsocket_spawn_mutex ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct socket*) ; 
 int /*<<< orphan*/  FUNC9 (struct socket*,int) ; 
 int FUNC10 (int,struct socket*,struct socket**) ; 
 TYPE_3__* FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (struct socket*,struct sockaddr*,int) ; 
 int FUNC15 (struct socket*,int) ; 

int FUNC16(struct file *filp, int fd, int tcpu)
{
	int ret = 0, backlog;
	int cpu;
	struct socket *sock, *newsock;
	struct sockaddr_in addr;
	kernel_cap_t p;

	FUNC0(INFO, "Listen spawn listen fd %d on CPU %d. filp->sub_file(%p)\n", fd, tcpu, filp->sub_file);

	FUNC12(&fastsocket_spawn_mutex);

	if (filp->sub_file) {
		FUNC1(ERR, "Spawn on a already spawned file 0x%p\n", filp);
		ret = -EEXIST;
		goto out;
	}

	sock  = (struct socket *)filp->private_data;

	if (sock->sk->sk_state != TCP_LISTEN) {
		FUNC1(ERR, "Spawn on a non-listen socket[%d-%d] file 0x%p\n", fd, sock->sk->sk_state, filp);
		ret = -EINVAL;
		goto out;
	}

	ret = FUNC3(tcpu);
	if (ret < 0) {
		FUNC1(ERR, "Set CPU affinity for process failed\n");
		goto out;
	}

	cpu = ret;
	newsock = NULL;
	ret = FUNC10(fd, sock, &newsock);
	if (ret < 0) {
		FUNC1(ERR, "Clone listen socket failed[%d]\n", ret);
		goto restore;
	}

	FUNC9(newsock, cpu);

	FUNC7(&p);

	addr.sin_family = AF_INET;
	addr.sin_port = FUNC11(sock->sk)->sport;
	addr.sin_addr.s_addr = FUNC11(sock->sk)->saddr;

	ret = newsock->ops->bind(newsock, (struct sockaddr *)&addr, sizeof(addr));
	if (ret < 0)
	{
		FUNC1(ERR, "Bind spawned socket %d failed[%d]\n", fd, ret);
		goto release;
	}

	FUNC6(&p);

	backlog = sock->sk->sk_max_ack_backlog;

	ret = newsock->ops->listen(newsock, backlog);
	if (ret < 0)
	{
		FUNC1(ERR, "Listen spawned socket %d failed[%d]\n", fd, ret);
		goto release;
	}

	FUNC5(cpu);

	goto out;

release:
	FUNC8(newsock);
	FUNC2(fd);
restore:
	FUNC4(cpu);
out:
	FUNC13(&fastsocket_spawn_mutex);

	FUNC0(DEBUG, "fsocket_spawn return value is %d\n", ret);	

	return ret;
}