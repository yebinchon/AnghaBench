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
struct nfs4_stateowner {int /*<<< orphan*/  so_time; int /*<<< orphan*/  so_close_lru; } ;

/* Variables and functions */
 int /*<<< orphan*/  close_lru ; 
 int /*<<< orphan*/  FUNC0 (char*,struct nfs4_stateowner*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct nfs4_stateowner *sop)
{
	FUNC0("NFSD: move_to_close_lru nfs4_stateowner %p\n", sop);

	FUNC2(&sop->so_close_lru, &close_lru);
	sop->so_time = FUNC1();
}