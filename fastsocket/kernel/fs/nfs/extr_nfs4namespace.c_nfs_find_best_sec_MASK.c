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
struct xdr_netobj {int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
struct nfs4_secinfo_flavors {int num_flavors; struct nfs4_secinfo_flavor* flavors; } ;
struct TYPE_3__ {int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
struct TYPE_4__ {int /*<<< orphan*/  service; TYPE_1__ sec_oid4; } ;
struct nfs4_secinfo_flavor {scalar_t__ flavor; TYPE_2__ gss; } ;
struct gss_api_mech {int dummy; } ;
typedef  scalar_t__ rpc_authflavor_t ;

/* Variables and functions */
 scalar_t__ RPC_AUTH_GSS ; 
 scalar_t__ RPC_AUTH_NULL ; 
 scalar_t__ RPC_AUTH_UNIX ; 
 struct gss_api_mech* FUNC0 (struct xdr_netobj*) ; 
 int /*<<< orphan*/  FUNC1 (struct gss_api_mech*) ; 
 scalar_t__ FUNC2 (struct gss_api_mech*,int /*<<< orphan*/ ) ; 

rpc_authflavor_t FUNC3(struct nfs4_secinfo_flavors *flavors)
{
	struct gss_api_mech *mech;
	struct xdr_netobj oid;
	int i;
	rpc_authflavor_t pseudoflavor = RPC_AUTH_UNIX;

	for (i = 0; i < flavors->num_flavors; i++) {
		struct nfs4_secinfo_flavor *flavor;
		flavor = &flavors->flavors[i];

		if (flavor->flavor == RPC_AUTH_NULL || flavor->flavor == RPC_AUTH_UNIX) {
			pseudoflavor = flavor->flavor;
			break;
		} else if (flavor->flavor == RPC_AUTH_GSS) {
			oid.len  = flavor->gss.sec_oid4.len;
			oid.data = flavor->gss.sec_oid4.data;
			mech = FUNC0(&oid);
			if (!mech)
				continue;
			pseudoflavor = FUNC2(mech, flavor->gss.service);
			FUNC1(mech);
			break;
		}
	}

	return pseudoflavor;
}