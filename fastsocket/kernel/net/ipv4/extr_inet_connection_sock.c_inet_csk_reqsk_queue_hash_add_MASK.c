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
typedef  int /*<<< orphan*/  u32 ;
struct sock {int dummy; } ;
struct request_sock {int dummy; } ;
struct listen_sock {int /*<<< orphan*/  nr_table_entries; int /*<<< orphan*/  hash_rnd; } ;
struct TYPE_3__ {struct listen_sock* listen_opt; } ;
struct inet_connection_sock {TYPE_1__ icsk_accept_queue; } ;
struct TYPE_4__ {int /*<<< orphan*/  rmt_port; int /*<<< orphan*/  rmt_addr; } ;

/* Variables and functions */
 struct inet_connection_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,unsigned long) ; 
 TYPE_2__* FUNC2 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/  const,struct request_sock*,unsigned long) ; 

void FUNC5(struct sock *sk, struct request_sock *req,
				   unsigned long timeout)
{
	struct inet_connection_sock *icsk = FUNC0(sk);
	struct listen_sock *lopt = icsk->icsk_accept_queue.listen_opt;
	const u32 h = FUNC3(FUNC2(req)->rmt_addr, FUNC2(req)->rmt_port,
				     lopt->hash_rnd, lopt->nr_table_entries);

	FUNC4(&icsk->icsk_accept_queue, h, req, timeout);
	FUNC1(sk, timeout);
}