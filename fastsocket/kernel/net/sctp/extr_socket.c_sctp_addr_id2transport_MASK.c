#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  union sctp_addr {int dummy; } sctp_addr ;
struct sockaddr_storage {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_family; } ;
struct sctp_transport {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef  int /*<<< orphan*/  sctp_assoc_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* addr_v4map ) (TYPE_1__*,union sctp_addr*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  ep; } ;

/* Variables and functions */
 struct sctp_association* FUNC0 (int /*<<< orphan*/ ,union sctp_addr*,struct sctp_transport**) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 struct sctp_association* FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,union sctp_addr*) ; 

__attribute__((used)) static struct sctp_transport *FUNC5(struct sock *sk,
					      struct sockaddr_storage *addr,
					      sctp_assoc_t id)
{
	struct sctp_association *addr_asoc = NULL, *id_asoc = NULL;
	struct sctp_transport *transport;
	union sctp_addr *laddr = (union sctp_addr *)addr;

	addr_asoc = FUNC0(FUNC3(sk)->ep,
					       laddr,
					       &transport);

	if (!addr_asoc)
		return NULL;

	id_asoc = FUNC2(sk, id);
	if (id_asoc && (id_asoc != addr_asoc))
		return NULL;

	FUNC1(sk->sk_family)->addr_v4map(FUNC3(sk),
						(union sctp_addr *)addr);

	return transport;
}