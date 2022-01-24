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
struct xdr_netobj {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct nfs4_stateowner {int /*<<< orphan*/  so_ref; TYPE_1__ so_owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nfs4_stateowner* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct nfs4_stateowner*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stateowner_slab ; 

__attribute__((used)) static inline struct nfs4_stateowner *
FUNC5(struct xdr_netobj *owner)
{
	struct nfs4_stateowner *sop;

	if ((sop = FUNC1(stateowner_slab, GFP_KERNEL))) {
		if ((sop->so_owner.data = FUNC0(owner->len, GFP_KERNEL))) {
			FUNC4(sop->so_owner.data, owner->data, owner->len);
			sop->so_owner.len = owner->len;
			FUNC3(&sop->so_ref);
			return sop;
		} 
		FUNC2(stateowner_slab, sop);
	}
	return NULL;
}