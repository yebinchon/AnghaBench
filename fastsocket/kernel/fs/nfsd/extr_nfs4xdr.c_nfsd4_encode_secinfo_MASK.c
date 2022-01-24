#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct svc_export {int ex_nflavors; TYPE_3__* ex_client; struct exp_flavor_info* ex_flavors; } ;
struct nfsd4_secinfo {struct svc_export* si_exp; } ;
struct nfsd4_compoundres {int dummy; } ;
struct TYPE_5__ {int len; int /*<<< orphan*/  data; } ;
struct gss_api_mech {TYPE_2__ gm_oid; } ;
struct exp_flavor_info {int pseudoflavor; } ;
typedef  scalar_t__ __be32 ;
struct TYPE_6__ {TYPE_1__* flavour; } ;
struct TYPE_4__ {scalar_t__ flavour; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int RPC_AUTH_GSS ; 
 int RPC_AUTH_NULL ; 
 scalar_t__ RPC_AUTH_UNIX ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_export*) ; 
 struct gss_api_mech* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct gss_api_mech*) ; 
 int FUNC7 (struct gss_api_mech*,int) ; 
 int FUNC8 (TYPE_3__*) ; 

__attribute__((used)) static __be32
FUNC9(struct nfsd4_compoundres *resp, __be32 nfserr,
		     struct nfsd4_secinfo *secinfo)
{
	int i = 0;
	struct svc_export *exp = secinfo->si_exp;
	u32 nflavs;
	struct exp_flavor_info *flavs;
	struct exp_flavor_info def_flavs[2];
	__be32 *p;

	if (nfserr)
		goto out;
	if (exp->ex_nflavors) {
		flavs = exp->ex_flavors;
		nflavs = exp->ex_nflavors;
	} else { /* Handling of some defaults in absence of real secinfo: */
		flavs = def_flavs;
		if (exp->ex_client->flavour->flavour == RPC_AUTH_UNIX) {
			nflavs = 2;
			flavs[0].pseudoflavor = RPC_AUTH_UNIX;
			flavs[1].pseudoflavor = RPC_AUTH_NULL;
		} else if (exp->ex_client->flavour->flavour == RPC_AUTH_GSS) {
			nflavs = 1;
			flavs[0].pseudoflavor
					= FUNC8(exp->ex_client);
		} else {
			nflavs = 1;
			flavs[0].pseudoflavor
					= exp->ex_client->flavour->flavour;
		}
	}

	FUNC1(4);
	FUNC2(nflavs);
	FUNC0();
	for (i = 0; i < nflavs; i++) {
		u32 flav = flavs[i].pseudoflavor;
		struct gss_api_mech *gm = FUNC5(flav);

		if (gm) {
			FUNC1(4);
			FUNC2(RPC_AUTH_GSS);
			FUNC0();
			FUNC1(4 + gm->gm_oid.len);
			FUNC2(gm->gm_oid.len);
			FUNC3(gm->gm_oid.data, gm->gm_oid.len);
			FUNC0();
			FUNC1(4);
			FUNC2(0); /* qop */
			FUNC0();
			FUNC1(4);
			FUNC2(FUNC7(gm, flav));
			FUNC0();
			FUNC6(gm);
		} else {
			FUNC1(4);
			FUNC2(flav);
			FUNC0();
		}
	}
out:
	if (exp)
		FUNC4(exp);
	return nfserr;
}