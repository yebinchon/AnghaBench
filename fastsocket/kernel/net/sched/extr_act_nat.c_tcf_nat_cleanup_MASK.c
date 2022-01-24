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
struct tcf_nat {int /*<<< orphan*/  common; } ;
struct tc_action {struct tcf_nat* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  nat_hash_info ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct tc_action *a, int bind)
{
	struct tcf_nat *p = a->priv;

	return FUNC0(&p->common, bind, &nat_hash_info);
}