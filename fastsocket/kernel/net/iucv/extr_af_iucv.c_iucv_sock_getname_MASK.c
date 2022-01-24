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
struct socket {struct sock* sk; } ;
struct sockaddr_iucv {int /*<<< orphan*/  siucv_nodeid; int /*<<< orphan*/  siucv_addr; int /*<<< orphan*/  siucv_port; int /*<<< orphan*/  siucv_name; int /*<<< orphan*/  siucv_user_id; } ;
struct sockaddr {int /*<<< orphan*/  sa_family; } ;
struct sock {int dummy; } ;
struct iucv_sock {int /*<<< orphan*/  src_name; int /*<<< orphan*/  src_user_id; int /*<<< orphan*/  dst_name; int /*<<< orphan*/  dst_user_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_IUCV ; 
 struct iucv_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct socket *sock, struct sockaddr *addr,
			     int *len, int peer)
{
	struct sockaddr_iucv *siucv = (struct sockaddr_iucv *) addr;
	struct sock *sk = sock->sk;
	struct iucv_sock *iucv = FUNC0(sk);

	addr->sa_family = AF_IUCV;
	*len = sizeof(struct sockaddr_iucv);

	if (peer) {
		FUNC1(siucv->siucv_user_id, iucv->dst_user_id, 8);
		FUNC1(siucv->siucv_name, iucv->dst_name, 8);
	} else {
		FUNC1(siucv->siucv_user_id, iucv->src_user_id, 8);
		FUNC1(siucv->siucv_name, iucv->src_name, 8);
	}
	FUNC2(&siucv->siucv_port, 0, sizeof(siucv->siucv_port));
	FUNC2(&siucv->siucv_addr, 0, sizeof(siucv->siucv_addr));
	FUNC2(&siucv->siucv_nodeid, 0, sizeof(siucv->siucv_nodeid));

	return 0;
}