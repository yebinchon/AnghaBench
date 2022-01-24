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
struct nf_conntrack_expect {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  nf_conntrack_lock ; 
 int /*<<< orphan*/  FUNC0 (struct nf_conntrack_expect*) ; 
 int /*<<< orphan*/  FUNC1 (struct nf_conntrack_expect*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(unsigned long ul_expect)
{
	struct nf_conntrack_expect *exp = (void *)ul_expect;

	FUNC2(&nf_conntrack_lock);
	FUNC1(exp);
	FUNC3(&nf_conntrack_lock);
	FUNC0(exp);
}