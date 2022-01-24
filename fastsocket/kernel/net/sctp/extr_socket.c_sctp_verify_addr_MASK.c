#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  union sctp_addr {int dummy; } sctp_addr ;
struct sock {int dummy; } ;
struct sctp_af {int /*<<< orphan*/  (* addr_valid ) (union sctp_addr*,TYPE_2__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_7__ {TYPE_1__* pf; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* send_verify ) (TYPE_2__*,union sctp_addr*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 TYPE_2__* FUNC0 (struct sock*) ; 
 struct sctp_af* FUNC1 (TYPE_2__*,union sctp_addr*,int) ; 
 int /*<<< orphan*/  FUNC2 (union sctp_addr*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,union sctp_addr*) ; 

__attribute__((used)) static inline int FUNC4(struct sock *sk, union sctp_addr *addr,
				   int len)
{
	struct sctp_af *af;

	/* Verify basic sockaddr. */
	af = FUNC1(FUNC0(sk), addr, len);
	if (!af)
		return -EINVAL;

	/* Is this a valid SCTP address?  */
	if (!af->addr_valid(addr, FUNC0(sk), NULL))
		return -EINVAL;

	if (!FUNC0(sk)->pf->send_verify(FUNC0(sk), (addr)))
		return -EINVAL;

	return 0;
}