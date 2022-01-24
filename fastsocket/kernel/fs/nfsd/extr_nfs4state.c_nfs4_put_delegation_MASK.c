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
struct nfs4_delegation {int /*<<< orphan*/  dl_file; int /*<<< orphan*/  dl_count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  deleg_slab ; 
 int /*<<< orphan*/  FUNC1 (char*,struct nfs4_delegation*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct nfs4_delegation*) ; 
 int /*<<< orphan*/  num_delegations ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(struct nfs4_delegation *dp)
{
	if (FUNC0(&dp->dl_count)) {
		FUNC1("NFSD: freeing dp %p\n",dp);
		FUNC3(dp->dl_file);
		FUNC2(deleg_slab, dp);
		num_delegations--;
	}
}