#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  union nf_inet_addr {int dummy; } nf_inet_addr ;
struct sk_buff {int dummy; } ;
struct nf_conntrack_expect {int /*<<< orphan*/  tuple; int /*<<< orphan*/  helper; int /*<<< orphan*/  flags; } ;
struct nf_conn {TYPE_3__* tuplehash; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_9__ {int /*<<< orphan*/  callSignalAddress; } ;
struct TYPE_6__ {int /*<<< orphan*/  u3; } ;
struct TYPE_7__ {TYPE_1__ src; } ;
struct TYPE_8__ {TYPE_2__ tuple; } ;
typedef  TYPE_4__ LocationConfirm ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  NF_CT_EXPECT_CLASS_DEFAULT ; 
 int /*<<< orphan*/  NF_CT_EXPECT_PERMANENT ; 
 int /*<<< orphan*/  FUNC1 (struct nf_conn*,unsigned char*,int /*<<< orphan*/ *,union nf_inet_addr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nf_conntrack_helper_q931 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct nf_conntrack_expect* FUNC3 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC4 (struct nf_conntrack_expect*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,union nf_inet_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct nf_conntrack_expect*) ; 
 scalar_t__ FUNC6 (struct nf_conntrack_expect*) ; 
 int /*<<< orphan*/  FUNC7 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct nf_conn *ct,
		       enum ip_conntrack_info ctinfo,
		       unsigned char **data, LocationConfirm *lcf)
{
	int dir = FUNC0(ctinfo);
	int ret = 0;
	__be16 port;
	union nf_inet_addr addr;
	struct nf_conntrack_expect *exp;

	FUNC8("nf_ct_ras: LCF\n");

	if (!FUNC1(ct, *data, &lcf->callSignalAddress,
			   &addr, &port))
		return 0;

	/* Need new expect for call signal */
	if ((exp = FUNC3(ct)) == NULL)
		return -1;
	FUNC4(exp, NF_CT_EXPECT_CLASS_DEFAULT, FUNC7(ct),
			  &ct->tuplehash[!dir].tuple.src.u3, &addr,
			  IPPROTO_TCP, NULL, &port);
	exp->flags = NF_CT_EXPECT_PERMANENT;
	exp->helper = nf_conntrack_helper_q931;

	if (FUNC6(exp) == 0) {
		FUNC8("nf_ct_ras: expect Q.931 ");
		FUNC2(&exp->tuple);
	} else
		ret = -1;

	FUNC5(exp);

	/* Ignore rasAddress */

	return ret;
}