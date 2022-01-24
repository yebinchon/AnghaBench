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
struct sock {int dummy; } ;
struct rds_sock {int rs_rcv_bytes; int rs_congested; int /*<<< orphan*/  rs_bound_port; int /*<<< orphan*/  rs_bound_addr; } ;
struct rds_cong_map {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rds_cong_map*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rds_cong_map*) ; 
 int /*<<< orphan*/  FUNC3 (struct rds_cong_map*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rds_sock*) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct rds_sock*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 

__attribute__((used)) static void FUNC6(struct rds_sock *rs, struct sock *sk,
				  struct rds_cong_map *map,
				  int delta, __be16 port)
{
	int now_congested;

	if (delta == 0)
		return;

	rs->rs_rcv_bytes += delta;
	now_congested = rs->rs_rcv_bytes > FUNC4(rs);

	FUNC5("rs %p (%pI4:%u) recv bytes %d buf %d "
	  "now_cong %d delta %d\n",
	  rs, &rs->rs_bound_addr,
	  FUNC0(rs->rs_bound_port), rs->rs_rcv_bytes,
	  FUNC4(rs), now_congested, delta);

	/* wasn't -> am congested */
	if (!rs->rs_congested && now_congested) {
		rs->rs_congested = 1;
		FUNC3(map, port);
		FUNC2(map);
	}
	/* was -> aren't congested */
	/* Require more free space before reporting uncongested to prevent
	   bouncing cong/uncong state too often */
	else if (rs->rs_congested && (rs->rs_rcv_bytes < (FUNC4(rs)/2))) {
		rs->rs_congested = 0;
		FUNC1(map, port);
		FUNC2(map);
	}

	/* do nothing if no change in cong state */
}