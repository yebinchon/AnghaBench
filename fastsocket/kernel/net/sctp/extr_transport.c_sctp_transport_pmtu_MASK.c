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
struct sctp_transport {int /*<<< orphan*/  pathmtu; int /*<<< orphan*/  saddr; int /*<<< orphan*/  ipaddr; int /*<<< orphan*/  asoc; TYPE_1__* af_specific; } ;
struct flowi {int dummy; } ;
struct dst_entry {int dummy; } ;
struct TYPE_2__ {struct dst_entry* (* get_dst ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct flowi*,struct sock*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_DEFAULT_MAXSEGMENT ; 
 int /*<<< orphan*/  FUNC0 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_entry*) ; 
 struct dst_entry* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct flowi*,struct sock*) ; 

void FUNC3(struct sctp_transport *transport, struct sock *sk)
{
	struct dst_entry *dst;
	struct flowi fl;

	dst = transport->af_specific->get_dst(transport->asoc,
					      &transport->ipaddr,
					      &transport->saddr,
					      &fl, sk);

	if (dst) {
		transport->pathmtu = FUNC0(dst);
		FUNC1(dst);
	} else
		transport->pathmtu = SCTP_DEFAULT_MAXSEGMENT;
}