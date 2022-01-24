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
struct sock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  hwaddr; int /*<<< orphan*/  addr_type; } ;
struct dgram_sock {TYPE_1__ dst_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE802154_ADDR_LONG ; 
 struct dgram_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

__attribute__((used)) static int FUNC4(struct sock *sk, int flags)
{
	struct dgram_sock *ro = FUNC0(sk);

	FUNC1(sk);

	ro->dst_addr.addr_type = IEEE802154_ADDR_LONG;
	FUNC2(&ro->dst_addr.hwaddr, 0xff, sizeof(ro->dst_addr.hwaddr));

	FUNC3(sk);

	return 0;
}