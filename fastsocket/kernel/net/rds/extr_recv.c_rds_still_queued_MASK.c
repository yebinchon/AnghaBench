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
struct sock {int dummy; } ;
struct rds_sock {int /*<<< orphan*/  rs_recv_lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  h_dport; int /*<<< orphan*/  h_len; } ;
struct rds_incoming {int /*<<< orphan*/  i_item; TYPE_2__ i_hdr; TYPE_1__* i_conn; } ;
struct TYPE_3__ {int /*<<< orphan*/  c_lcong; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rds_incoming*) ; 
 int /*<<< orphan*/  FUNC4 (struct rds_sock*,struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sock* FUNC5 (struct rds_sock*) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct rds_incoming*,struct rds_sock*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct rds_sock *rs, struct rds_incoming *inc,
			    int drop)
{
	struct sock *sk = FUNC5(rs);
	int ret = 0;
	unsigned long flags;

	FUNC7(&rs->rs_recv_lock, flags);
	if (!FUNC2(&inc->i_item)) {
		ret = 1;
		if (drop) {
			/* XXX make sure this i_conn is reliable */
			FUNC4(rs, sk, inc->i_conn->c_lcong,
					      -FUNC0(inc->i_hdr.h_len),
					      inc->i_hdr.h_dport);
			FUNC1(&inc->i_item);
			FUNC3(inc);
		}
	}
	FUNC8(&rs->rs_recv_lock, flags);

	FUNC6("inc %p rs %p still %d dropped %d\n", inc, rs, ret, drop);
	return ret;
}