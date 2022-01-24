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
typedef  int u_int8_t ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {size_t* role; size_t state; } ;
struct TYPE_4__ {TYPE_1__ dccp; } ;
struct nf_conn {TYPE_2__ proto; } ;
struct net {int dummy; } ;
struct dccp_net {int /*<<< orphan*/  dccp_loose; } ;
struct dccp_hdr {size_t dccph_type; } ;
typedef  int /*<<< orphan*/  _dh ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  CT_DCCP_INVALID 129 
 size_t CT_DCCP_NONE ; 
#define  CT_DCCP_REQUEST 128 
 size_t CT_DCCP_ROLE_CLIENT ; 
 size_t CT_DCCP_ROLE_SERVER ; 
 int /*<<< orphan*/  IPPROTO_DCCP ; 
 size_t IP_CT_DIR_ORIGINAL ; 
 size_t IP_CT_DIR_REPLY ; 
 scalar_t__ FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 struct dccp_net* FUNC2 (struct net*) ; 
 int*** dccp_state_table ; 
 int /*<<< orphan*/  FUNC3 (struct nf_conn*) ; 
 struct net* FUNC4 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 struct dccp_hdr* FUNC6 (struct sk_buff const*,unsigned int,int,struct dccp_hdr*) ; 

__attribute__((used)) static bool FUNC7(struct nf_conn *ct, const struct sk_buff *skb,
		     unsigned int dataoff)
{
	struct net *net = FUNC4(ct);
	struct dccp_net *dn;
	struct dccp_hdr _dh, *dh;
	const char *msg;
	u_int8_t state;

	dh = FUNC6(skb, dataoff, sizeof(_dh), &_dh);
	FUNC0(dh == NULL);

	state = dccp_state_table[CT_DCCP_ROLE_CLIENT][dh->dccph_type][CT_DCCP_NONE];
	switch (state) {
	default:
		dn = FUNC2(net);
		if (dn->dccp_loose == 0) {
			msg = "nf_ct_dccp: not picking up existing connection ";
			goto out_invalid;
		}
	case CT_DCCP_REQUEST:
		break;
	case CT_DCCP_INVALID:
		msg = "nf_ct_dccp: invalid state transition ";
		goto out_invalid;
	}

	ct->proto.dccp.role[IP_CT_DIR_ORIGINAL] = CT_DCCP_ROLE_CLIENT;
	ct->proto.dccp.role[IP_CT_DIR_REPLY] = CT_DCCP_ROLE_SERVER;
	ct->proto.dccp.state = CT_DCCP_NONE;
	return true;

out_invalid:
	if (FUNC1(net, IPPROTO_DCCP))
		FUNC5(FUNC3(ct), 0, skb, NULL, NULL, NULL, msg);
	return false;
}