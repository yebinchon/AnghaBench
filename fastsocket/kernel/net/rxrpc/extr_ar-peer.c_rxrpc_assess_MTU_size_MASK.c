#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_11__ {TYPE_1__ sin_addr; } ;
struct TYPE_12__ {int family; TYPE_2__ sin; } ;
struct TYPE_13__ {TYPE_3__ transport; } ;
struct rxrpc_peer {int if_mtu; TYPE_4__ srx; } ;
struct TYPE_18__ {int /*<<< orphan*/  dst; } ;
struct rtable {TYPE_9__ u; } ;
struct TYPE_16__ {void* dport; void* sport; } ;
struct TYPE_17__ {TYPE_7__ ports; } ;
struct TYPE_14__ {int /*<<< orphan*/  tos; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct TYPE_15__ {TYPE_5__ ip4_u; } ;
struct flowi {TYPE_8__ uli_u; TYPE_6__ nl_u; int /*<<< orphan*/  proto; int /*<<< orphan*/  oif; } ;
typedef  int /*<<< orphan*/  fl ;

/* Variables and functions */
#define  AF_INET 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  init_net ; 
 int FUNC5 (int /*<<< orphan*/ *,struct rtable**,struct flowi*) ; 
 int /*<<< orphan*/  FUNC6 (struct flowi*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct rxrpc_peer *peer)
{
	struct rtable *rt;
	struct flowi fl;
	int ret;

	peer->if_mtu = 1500;

	FUNC6(&fl, 0, sizeof(fl));

	switch (peer->srx.transport.family) {
	case AF_INET:
		fl.oif = 0;
		fl.proto = IPPROTO_UDP,
		fl.nl_u.ip4_u.saddr = 0;
		fl.nl_u.ip4_u.daddr = peer->srx.transport.sin.sin_addr.s_addr;
		fl.nl_u.ip4_u.tos = 0;
		/* assume AFS.CM talking to AFS.FS */
		fl.uli_u.ports.sport = FUNC4(7001);
		fl.uli_u.ports.dport = FUNC4(7000);
		break;
	default:
		FUNC0();
	}

	ret = FUNC5(&init_net, &rt, &fl);
	if (ret < 0) {
		FUNC1(" [route err %d]", ret);
		return;
	}

	peer->if_mtu = FUNC2(&rt->u.dst);
	FUNC3(&rt->u.dst);

	FUNC1(" [if_mtu %u]", peer->if_mtu);
}