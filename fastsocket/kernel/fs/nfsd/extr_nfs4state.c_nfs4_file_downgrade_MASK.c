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
struct nfs4_stateid {int /*<<< orphan*/  st_access_bmap; int /*<<< orphan*/  st_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(struct nfs4_stateid *stp, unsigned int to_access)
{
	int i;

	for (i = 1; i < 4; i++) {
		if (FUNC3(i, &stp->st_access_bmap)
					&& ((i & to_access) != i)) {
			FUNC2(stp->st_file, FUNC1(i));
			FUNC0(i, &stp->st_access_bmap);
		}
	}
}