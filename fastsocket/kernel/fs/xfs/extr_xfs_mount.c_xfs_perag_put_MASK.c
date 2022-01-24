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
struct xfs_perag {int /*<<< orphan*/  pag_agno; int /*<<< orphan*/  pag_mount; int /*<<< orphan*/  pag_ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void
FUNC4(struct xfs_perag *pag)
{
	int	ref;

	FUNC0(FUNC2(&pag->pag_ref) > 0);
	ref = FUNC1(&pag->pag_ref);
	FUNC3(pag->pag_mount, pag->pag_agno, ref, _RET_IP_);
}