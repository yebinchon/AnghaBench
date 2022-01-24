#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sock {int dummy; } ;
struct request_sock {int dummy; } ;
struct listen_sock {int /*<<< orphan*/  nr_table_entries; int /*<<< orphan*/  hash_rnd; } ;
struct TYPE_4__ {struct listen_sock* listen_opt; } ;
struct inet_connection_sock {TYPE_1__ icsk_accept_queue; } ;
struct TYPE_6__ {int /*<<< orphan*/  rmt_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  rmt_port; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inet_connection_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,unsigned long const) ; 
 TYPE_2__* FUNC4 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/  const,struct request_sock*,unsigned long const) ; 

void FUNC6(struct sock *sk,
				    struct request_sock *req,
				    const unsigned long timeout)
{
	struct inet_connection_sock *icsk = FUNC2(sk);
	struct listen_sock *lopt = icsk->icsk_accept_queue.listen_opt;
	const u32 h = FUNC1(&FUNC0(req)->rmt_addr,
				      FUNC4(req)->rmt_port,
				      lopt->hash_rnd, lopt->nr_table_entries);

	FUNC5(&icsk->icsk_accept_queue, h, req, timeout);
	FUNC3(sk, timeout);
}