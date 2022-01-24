#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xt_tgdtor_param {TYPE_3__* target; int /*<<< orphan*/  family; int /*<<< orphan*/  targinfo; } ;
struct TYPE_4__ {TYPE_3__* target; } ;
struct TYPE_5__ {TYPE_1__ kernel; } ;
struct ip6t_entry_target {int /*<<< orphan*/  data; TYPE_2__ u; } ;
struct ip6t_entry {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  me; int /*<<< orphan*/  (* destroy ) (struct xt_tgdtor_param*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip6t_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NFPROTO_IPV6 ; 
 int /*<<< orphan*/  cleanup_match ; 
 struct ip6t_entry_target* FUNC1 (struct ip6t_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xt_tgdtor_param*) ; 

__attribute__((used)) static int
FUNC4(struct ip6t_entry *e, unsigned int *i)
{
	struct xt_tgdtor_param par;
	struct ip6t_entry_target *t;

	if (i && (*i)-- == 0)
		return 1;

	/* Cleanup all matches */
	FUNC0(e, cleanup_match, NULL);
	t = FUNC1(e);

	par.target   = t->u.kernel.target;
	par.targinfo = t->data;
	par.family   = NFPROTO_IPV6;
	if (par.target->destroy != NULL)
		par.target->destroy(&par);
	FUNC2(par.target->me);
	return 0;
}