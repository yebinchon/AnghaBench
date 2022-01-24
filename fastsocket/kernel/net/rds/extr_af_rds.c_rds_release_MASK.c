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
struct sock {int dummy; } ;
struct rds_sock {int /*<<< orphan*/  rs_transport; int /*<<< orphan*/  rs_item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rds_sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct rds_sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct rds_sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rds_sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct rds_sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct rds_sock*,int /*<<< orphan*/ *) ; 
 struct rds_sock* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  rds_sock_count ; 
 int /*<<< orphan*/  rds_sock_lock ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 

__attribute__((used)) static int FUNC14(struct socket *sock)
{
	struct sock *sk = sock->sk;
	struct rds_sock *rs;

	if (!sk)
		goto out;

	rs = FUNC7(sk);

	FUNC9(sk);
	/* Note - rds_clear_recv_queue grabs rs_recv_lock, so
	 * that ensures the recv path has completed messing
	 * with the socket. */
	FUNC1(rs);
	FUNC2(rs);

	/*
	 * the binding lookup hash uses rcu, we need to
	 * make sure we sychronize_rcu before we free our
	 * entry
	 */
	FUNC5(rs);
	FUNC13();

	FUNC6(rs, NULL);
	FUNC4(rs);
	FUNC3(rs, NULL);

	FUNC11(&rds_sock_lock);
	FUNC0(&rs->rs_item);
	rds_sock_count--;
	FUNC12(&rds_sock_lock);

	FUNC8(rs->rs_transport);

	sock->sk = NULL;
	FUNC10(sk);
out:
	return 0;
}