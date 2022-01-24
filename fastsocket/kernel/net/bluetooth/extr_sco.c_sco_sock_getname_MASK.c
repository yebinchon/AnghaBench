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
struct socket {struct sock* sk; } ;
struct sockaddr_sco {int /*<<< orphan*/  sco_bdaddr; } ;
struct sockaddr {int /*<<< orphan*/  sa_family; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_BLUETOOTH ; 
 int /*<<< orphan*/  FUNC0 (char*,struct socket*,struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (struct sock*) ; 

__attribute__((used)) static int FUNC3(struct socket *sock, struct sockaddr *addr, int *len, int peer)
{
	struct sockaddr_sco *sa = (struct sockaddr_sco *) addr;
	struct sock *sk = sock->sk;

	FUNC0("sock %p, sk %p", sock, sk);

	addr->sa_family = AF_BLUETOOTH;
	*len = sizeof(struct sockaddr_sco);

	if (peer)
		FUNC1(&sa->sco_bdaddr, &FUNC2(sk)->dst);
	else
		FUNC1(&sa->sco_bdaddr, &FUNC2(sk)->src);

	return 0;
}