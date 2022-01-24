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
struct rds_sock {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct rds_sock* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rds_sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct rds_sock*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct rds_sock*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct rds_sock *FUNC6(__be32 addr, __be16 port)
{
	struct rds_sock *rs;

	rs = FUNC1(addr, port, NULL);

	if (rs && !FUNC5(FUNC2(rs), SOCK_DEAD))
		FUNC3(rs);
	else
		rs = NULL;

	FUNC4("returning rs %p for %pI4:%u\n", rs, &addr,
		FUNC0(port));
	return rs;
}