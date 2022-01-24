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
struct nfsd4_setclientid {int /*<<< orphan*/  se_confirm; int /*<<< orphan*/  se_clientid; } ;
struct nfsd4_compoundres {int dummy; } ;
typedef  int /*<<< orphan*/  nfs4_verifier ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ nfserr_clid_inuse ; 

__attribute__((used)) static __be32
FUNC4(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_setclientid *scd)
{
	__be32 *p;

	if (!nfserr) {
		FUNC1(8 + sizeof(nfs4_verifier));
		FUNC3(&scd->se_clientid, 8);
		FUNC3(&scd->se_confirm, sizeof(nfs4_verifier));
		FUNC0();
	}
	else if (nfserr == nfserr_clid_inuse) {
		FUNC1(8);
		FUNC2(0);
		FUNC2(0);
		FUNC0();
	}
	return nfserr;
}