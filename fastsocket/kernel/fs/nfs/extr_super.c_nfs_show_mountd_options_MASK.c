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
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int sa_family; } ;
struct seq_file {int dummy; } ;
struct nfs_server {int /*<<< orphan*/ * mountd_port; int /*<<< orphan*/ * mountd_version; int /*<<< orphan*/  mountd_address; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,struct nfs_server*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,...) ; 

__attribute__((used)) static void FUNC2(struct seq_file *m, struct nfs_server *nfss,
				    int showdefaults)
{
	struct sockaddr *sap = (struct sockaddr *)&nfss->mountd_address;

	switch (sap->sa_family) {
	case AF_INET: {
		struct sockaddr_in *sin = (struct sockaddr_in *)sap;
		FUNC1(m, ",mountaddr=%pI4", &sin->sin_addr.s_addr);
		break;
	}
	case AF_INET6: {
		struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *)sap;
		FUNC1(m, ",mountaddr=%pI6", &sin6->sin6_addr);
		break;
	}
	default:
		if (showdefaults)
			FUNC1(m, ",mountaddr=unspecified");
	}

	if (nfss->mountd_version || showdefaults)
		FUNC1(m, ",mountvers=%u", nfss->mountd_version);
	if (nfss->mountd_port || showdefaults)
		FUNC1(m, ",mountport=%u", nfss->mountd_port);

	FUNC0(m, nfss, showdefaults);
}