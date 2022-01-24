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
struct ubifs_info {long long budg_idx_growth; long long budg_data_growth; long long budg_dd_growth; int /*<<< orphan*/  space_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long long FUNC2(struct ubifs_info *c)
{
	long long liab;

	FUNC0(&c->space_lock);
	liab = c->budg_idx_growth + c->budg_data_growth + c->budg_dd_growth;
	FUNC1(&c->space_lock);
	return liab;
}