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
struct rds_mr {int /*<<< orphan*/  r_refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rds_mr*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct rds_mr *mr)
{
	if (FUNC1(&mr->r_refcount))
		FUNC0(mr);
}