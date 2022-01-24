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
typedef  int /*<<< orphan*/  t ;
struct TYPE_14__ {int /*<<< orphan*/  key; } ;
struct TYPE_15__ {TYPE_5__ gre; } ;
struct TYPE_16__ {TYPE_6__ u; void* protonum; } ;
struct TYPE_11__ {int /*<<< orphan*/  key; } ;
struct TYPE_12__ {TYPE_2__ gre; } ;
struct TYPE_13__ {TYPE_3__ u; } ;
struct nf_conntrack_tuple {TYPE_7__ dst; TYPE_4__ src; } ;
struct TYPE_17__ {int /*<<< orphan*/  pns_call_id; int /*<<< orphan*/  pac_call_id; } ;
struct TYPE_18__ {TYPE_8__ ct_pptp_info; } ;
struct nf_conn_help {TYPE_9__ help; } ;
struct nf_conn {TYPE_1__* tuplehash; } ;
struct net {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  tuple; } ;

/* Variables and functions */
 void* IPPROTO_GRE ; 
 size_t IP_CT_DIR_ORIGINAL ; 
 size_t IP_CT_DIR_REPLY ; 
 int /*<<< orphan*/  FUNC0 (struct net*,struct nf_conntrack_tuple*) ; 
 int /*<<< orphan*/  FUNC1 (struct nf_conntrack_tuple*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nf_conn*) ; 
 struct net* FUNC3 (struct nf_conn*) ; 
 struct nf_conn_help* FUNC4 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(struct nf_conn *ct)
{
	struct net *net = FUNC3(ct);
	const struct nf_conn_help *help = FUNC4(ct);
	struct nf_conntrack_tuple t;

	FUNC2(ct);

	/* try original (pns->pac) tuple */
	FUNC1(&t, &ct->tuplehash[IP_CT_DIR_ORIGINAL].tuple, sizeof(t));
	t.dst.protonum = IPPROTO_GRE;
	t.src.u.gre.key = help->help.ct_pptp_info.pns_call_id;
	t.dst.u.gre.key = help->help.ct_pptp_info.pac_call_id;
	if (!FUNC0(net, &t))
		FUNC5("failed to timeout original pns->pac ct/exp\n");

	/* try reply (pac->pns) tuple */
	FUNC1(&t, &ct->tuplehash[IP_CT_DIR_REPLY].tuple, sizeof(t));
	t.dst.protonum = IPPROTO_GRE;
	t.src.u.gre.key = help->help.ct_pptp_info.pac_call_id;
	t.dst.u.gre.key = help->help.ct_pptp_info.pns_call_id;
	if (!FUNC0(net, &t))
		FUNC5("failed to timeout reply pac->pns ct/exp\n");
}