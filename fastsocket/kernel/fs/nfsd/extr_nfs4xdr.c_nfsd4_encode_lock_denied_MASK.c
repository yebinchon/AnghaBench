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
typedef  int /*<<< orphan*/  u64 ;
struct nfsd4_lock_denied {int ld_type; TYPE_2__* ld_sop; int /*<<< orphan*/  ld_clientid; int /*<<< orphan*/  ld_length; int /*<<< orphan*/  ld_start; } ;
struct nfsd4_compoundres {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_3__ {int len; int /*<<< orphan*/ * data; } ;
struct TYPE_4__ {int /*<<< orphan*/  so_ref; TYPE_1__ so_owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs4_free_stateowner ; 

__attribute__((used)) static void
FUNC7(struct nfsd4_compoundres *resp, struct nfsd4_lock_denied *ld)
{
	__be32 *p;

	FUNC1(32 + FUNC5(ld->ld_sop ? ld->ld_sop->so_owner.len : 0));
	FUNC3(ld->ld_start);
	FUNC3(ld->ld_length);
	FUNC2(ld->ld_type);
	if (ld->ld_sop) {
		FUNC4(&ld->ld_clientid, 8);
		FUNC2(ld->ld_sop->so_owner.len);
		FUNC4(ld->ld_sop->so_owner.data, ld->ld_sop->so_owner.len);
		FUNC6(&ld->ld_sop->so_ref, nfs4_free_stateowner);
	}  else {  /* non - nfsv4 lock in conflict, no clientid nor owner */
		FUNC3((u64)0); /* clientid */
		FUNC2(0); /* length of owner name */
	}
	FUNC0();
}