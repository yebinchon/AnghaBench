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
struct sk_buff {int dummy; } ;
struct msghdr {int /*<<< orphan*/  msg_flags; } ;
struct ip_options {int /*<<< orphan*/  __data; int /*<<< orphan*/  optlen; } ;
struct TYPE_3__ {scalar_t__ optlen; } ;
struct TYPE_4__ {TYPE_1__ opt; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IP_RETOPTS ; 
 int /*<<< orphan*/  MSG_CTRUNC ; 
 int /*<<< orphan*/  SOL_IP ; 
 scalar_t__ FUNC1 (struct ip_options*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_options*) ; 
 int /*<<< orphan*/  FUNC3 (struct msghdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct msghdr *msg, struct sk_buff *skb)
{
	unsigned char optbuf[sizeof(struct ip_options) + 40];
	struct ip_options * opt = (struct ip_options *)optbuf;

	if (FUNC0(skb)->opt.optlen == 0)
		return;

	if (FUNC1(opt, skb)) {
		msg->msg_flags |= MSG_CTRUNC;
		return;
	}
	FUNC2(opt);

	FUNC3(msg, SOL_IP, IP_RETOPTS, opt->optlen, opt->__data);
}