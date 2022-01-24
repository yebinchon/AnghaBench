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
struct sk_buff {int dummy; } ;
struct nsp_conn_init_msg {int msgflg; int /*<<< orphan*/  segsize; int /*<<< orphan*/  info; int /*<<< orphan*/  services; int /*<<< orphan*/  srcaddr; int /*<<< orphan*/  dstaddr; } ;
struct TYPE_2__ {int /*<<< orphan*/  opt_data; int /*<<< orphan*/  opt_optl; } ;
struct dn_scp {int /*<<< orphan*/  persist_fxn; int /*<<< orphan*/  persist; TYPE_1__ conndata_out; int /*<<< orphan*/  segsize_loc; int /*<<< orphan*/  info_loc; int /*<<< orphan*/  services_loc; int /*<<< orphan*/  addrloc; int /*<<< orphan*/  addrrem; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int __u8 ;

/* Variables and functions */
 struct dn_scp* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (struct sock*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  dn_nsp_retrans_conn_conf ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int) ; 
 int* FUNC7 (struct sk_buff*,int) ; 

void FUNC8(struct sock *sk, gfp_t gfp)
{
	struct dn_scp *scp = FUNC0(sk);
	struct sk_buff *skb = NULL;
	struct nsp_conn_init_msg *msg;
	__u8 len = (__u8)FUNC5(scp->conndata_out.opt_optl);

	if ((skb = FUNC2(sk, 50 + len, gfp)) == NULL)
		return;

	msg = (struct nsp_conn_init_msg *)FUNC7(skb, sizeof(*msg));
	msg->msgflg = 0x28;
	msg->dstaddr = scp->addrrem;
	msg->srcaddr = scp->addrloc;
	msg->services = scp->services_loc;
	msg->info = scp->info_loc;
	msg->segsize = FUNC1(scp->segsize_loc);

	*FUNC7(skb,1) = len;

	if (len > 0)
		FUNC6(FUNC7(skb, len), scp->conndata_out.opt_data, len);


	FUNC4(skb);

	scp->persist = FUNC3(sk);
	scp->persist_fxn = dn_nsp_retrans_conn_conf;
}