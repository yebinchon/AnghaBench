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
typedef  int u32 ;

/* Variables and functions */
 int ENOSPC ; 
 int PRIOIDX_SZ ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  max_prioidx ; 
 int /*<<< orphan*/  prioidx_map ; 
 int /*<<< orphan*/  prioidx_map_lock ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(u32 *prio)
{
	unsigned long flags;
	u32 prioidx;

	FUNC4(&prioidx_map_lock, flags);
	prioidx = FUNC2(prioidx_map, sizeof(unsigned long) * PRIOIDX_SZ);

	if (prioidx == sizeof(unsigned long) * PRIOIDX_SZ) {
		FUNC5(&prioidx_map_lock, flags);
		return -ENOSPC;
	}

	FUNC3(prioidx, prioidx_map);
	if (FUNC0(&max_prioidx) < prioidx)
		FUNC1(&max_prioidx, prioidx);
	FUNC5(&prioidx_map_lock, flags);

	*prio = prioidx;
	return 0;
}