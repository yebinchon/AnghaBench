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
struct ip_vs_service {int dummy; } ;
typedef  scalar_t__ __u32 ;
typedef  scalar_t__ __u16 ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 scalar_t__ FTPDATA ; 
 scalar_t__ FTPPORT ; 
 scalar_t__ IPPROTO_TCP ; 
 int /*<<< orphan*/  FUNC0 (int,union nf_inet_addr const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,char*) ; 
 scalar_t__ PROT_SOCK ; 
 struct ip_vs_service* FUNC2 (int,scalar_t__,union nf_inet_addr const*,scalar_t__) ; 
 struct ip_vs_service* FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  __ip_vs_svc_lock ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ip_vs_ftpsvc_counter ; 
 int /*<<< orphan*/  ip_vs_nullsvc_counter ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

struct ip_vs_service *
FUNC9(int af, __u32 fwmark, __u16 protocol,
		  const union nf_inet_addr *vaddr, __be16 vport)
{
	struct ip_vs_service *svc;

	FUNC7(&__ip_vs_svc_lock);

	/*
	 *	Check the table hashed by fwmark first
	 */
	if (fwmark && (svc = FUNC3(af, fwmark)))
		goto out;

	/*
	 *	Check the table hashed by <protocol,addr,port>
	 *	for "full" addressed entries
	 */
	svc = FUNC2(af, protocol, vaddr, vport);

	if (svc == NULL
	    && protocol == IPPROTO_TCP
	    && FUNC4(&ip_vs_ftpsvc_counter)
	    && (vport == FTPDATA || FUNC6(vport) >= PROT_SOCK)) {
		/*
		 * Check if ftp service entry exists, the packet
		 * might belong to FTP data connections.
		 */
		svc = FUNC2(af, protocol, vaddr, FTPPORT);
	}

	if (svc == NULL
	    && FUNC4(&ip_vs_nullsvc_counter)) {
		/*
		 * Check if the catch-all port (port zero) exists
		 */
		svc = FUNC2(af, protocol, vaddr, 0);
	}

  out:
	FUNC8(&__ip_vs_svc_lock);

	FUNC1(9, "lookup service: fwm %u %s %s:%u %s\n",
		      fwmark, FUNC5(protocol),
		      FUNC0(af, vaddr), FUNC6(vport),
		      svc ? "hit" : "not hit");

	return svc;
}