#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  union nf_inet_addr {int dummy; } nf_inet_addr ;
struct ip_vs_sync_conn_options {int dummy; } ;
struct ip_vs_protocol {unsigned long* timeout_table; } ;
struct ip_vs_dest {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  inactconns; int /*<<< orphan*/  activeconns; } ;
struct ip_vs_conn_param {scalar_t__ pe_data; int /*<<< orphan*/  vport; int /*<<< orphan*/  vaddr; } ;
struct ip_vs_conn {unsigned int flags; unsigned int state; unsigned int old_state; unsigned long timeout; int /*<<< orphan*/  in_pkts; int /*<<< orphan*/  in_seq; struct ip_vs_dest* dest; } ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 unsigned long HZ ; 
 unsigned int IP_VS_CONN_F_BACKUP_UPD_MASK ; 
 unsigned int IP_VS_CONN_F_INACTIVE ; 
 unsigned int IP_VS_CONN_F_TEMPLATE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 unsigned long MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ip_vs_conn* FUNC4 (struct ip_vs_conn_param*) ; 
 struct ip_vs_conn* FUNC5 (struct ip_vs_conn_param*,union nf_inet_addr const*,int /*<<< orphan*/ ,unsigned int,struct ip_vs_dest*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ip_vs_conn*) ; 
 struct ip_vs_conn* FUNC7 (struct ip_vs_conn_param*) ; 
 struct ip_vs_dest* FUNC8 (unsigned int,union nf_inet_addr const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 struct ip_vs_dest* FUNC9 (struct ip_vs_conn*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct ip_vs_sync_conn_options*,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static void FUNC13(struct ip_vs_conn_param *param,  unsigned flags,
			    unsigned state, unsigned protocol, unsigned type,
			    const union nf_inet_addr *daddr, __be16 dport,
			    unsigned long timeout, __u32 fwmark,
			    struct ip_vs_sync_conn_options *opt,
			    struct ip_vs_protocol *pp)
{
	struct ip_vs_dest *dest;
	struct ip_vs_conn *cp;


	if (!(flags & IP_VS_CONN_F_TEMPLATE))
		cp = FUNC4(param);
	else
		cp = FUNC7(param);

	if (cp) {
		/* Free pe_data */
		FUNC10(param->pe_data);

		dest = cp->dest;
		if ((cp->flags ^ flags) & IP_VS_CONN_F_INACTIVE &&
		    !(flags & IP_VS_CONN_F_TEMPLATE) && dest) {
			if (flags & IP_VS_CONN_F_INACTIVE) {
				FUNC1(&dest->activeconns);
				FUNC2(&dest->inactconns);
			} else {
				FUNC2(&dest->activeconns);
				FUNC1(&dest->inactconns);
			}
		}
		flags &= IP_VS_CONN_F_BACKUP_UPD_MASK;
		flags |= cp->flags & ~IP_VS_CONN_F_BACKUP_UPD_MASK;
		cp->flags = flags;
		if (!dest) {
			dest = FUNC9(cp);
			if (dest)
				FUNC1(&dest->refcnt);
		}
	} else {
		/*
		 * Find the appropriate destination for the connection.
		 * If it is not found the connection will remain unbound
		 * but still handled.
		 */
		dest = FUNC8(type, daddr, dport, param->vaddr,
				       param->vport, protocol, fwmark, flags);

		cp = FUNC5(param, daddr, dport, flags, dest, fwmark);
		if (dest)
			FUNC1(&dest->refcnt);
		if (!cp) {
			if (param->pe_data)
				FUNC10(param->pe_data);
			FUNC0(2, "BACKUP, add new conn. failed\n");
			return;
		}
	}

	if (opt)
		FUNC11(&cp->in_seq, opt, sizeof(*opt));
	FUNC3(&cp->in_pkts, FUNC12());
	cp->state = state;
	cp->old_state = cp->state;
	/*
	 * For Ver 0 messages style
	 *  - Not possible to recover the right timeout for templates
	 *  - can not find the right fwmark
	 *    virtual service. If needed, we can do it for
	 *    non-fwmark persistent services.
	 * Ver 1 messages style.
	 *  - No problem.
	 */
	if (timeout) {
		if (timeout > MAX_SCHEDULE_TIMEOUT / HZ)
			timeout = MAX_SCHEDULE_TIMEOUT / HZ;
		cp->timeout = timeout*HZ;
	} else if (!(flags & IP_VS_CONN_F_TEMPLATE) && pp->timeout_table)
		cp->timeout = pp->timeout_table[state];
	else
		cp->timeout = (3*60*HZ);
	FUNC6(cp);
}