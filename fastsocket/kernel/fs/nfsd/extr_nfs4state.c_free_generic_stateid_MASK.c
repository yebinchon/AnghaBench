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
struct nfs4_stateid {int /*<<< orphan*/  st_file; int /*<<< orphan*/  st_access_bmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct nfs4_stateid*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stateid_slab ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct nfs4_stateid *stp)
{
	int i;

	if (stp->st_access_bmap) {
		for (i = 1; i < 4; i++) {
			if (FUNC4(i, &stp->st_access_bmap))
				FUNC2(stp->st_file,
						FUNC1(i));
		}
	}
	FUNC3(stp->st_file);
	FUNC0(stateid_slab, stp);
}