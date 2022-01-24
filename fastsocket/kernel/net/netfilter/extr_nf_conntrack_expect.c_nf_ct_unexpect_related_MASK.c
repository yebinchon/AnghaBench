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
struct nf_conntrack_expect {int /*<<< orphan*/  timeout; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nf_conntrack_lock ; 
 int /*<<< orphan*/  FUNC1 (struct nf_conntrack_expect*) ; 
 int /*<<< orphan*/  FUNC2 (struct nf_conntrack_expect*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct nf_conntrack_expect *exp)
{
	FUNC3(&nf_conntrack_lock);
	if (FUNC0(&exp->timeout)) {
		FUNC2(exp);
		FUNC1(exp);
	}
	FUNC4(&nf_conntrack_lock);
}