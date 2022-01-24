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
struct dquot {int /*<<< orphan*/  dq_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DQ_MOD_B ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC1(struct dquot *dquot)
{
	return FUNC0(DQ_MOD_B, &dquot->dq_flags);
}