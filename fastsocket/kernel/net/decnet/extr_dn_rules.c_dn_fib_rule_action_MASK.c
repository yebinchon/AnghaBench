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
struct flowi {int dummy; } ;
struct fib_rule {int action; int /*<<< orphan*/  table; } ;
struct fib_lookup_arg {scalar_t__ result; } ;
struct dn_fib_table {int (* lookup ) (struct dn_fib_table*,struct flowi*,struct dn_fib_res*) ;} ;
struct dn_fib_res {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 int EAGAIN ; 
 int EINVAL ; 
 int ENETUNREACH ; 
#define  FR_ACT_BLACKHOLE 131 
#define  FR_ACT_PROHIBIT 130 
#define  FR_ACT_TO_TBL 129 
#define  FR_ACT_UNREACHABLE 128 
 struct dn_fib_table* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct dn_fib_table*,struct flowi*,struct dn_fib_res*) ; 

__attribute__((used)) static int FUNC2(struct fib_rule *rule, struct flowi *flp,
			      int flags, struct fib_lookup_arg *arg)
{
	int err = -EAGAIN;
	struct dn_fib_table *tbl;

	switch(rule->action) {
	case FR_ACT_TO_TBL:
		break;

	case FR_ACT_UNREACHABLE:
		err = -ENETUNREACH;
		goto errout;

	case FR_ACT_PROHIBIT:
		err = -EACCES;
		goto errout;

	case FR_ACT_BLACKHOLE:
	default:
		err = -EINVAL;
		goto errout;
	}

	tbl = FUNC0(rule->table, 0);
	if (tbl == NULL)
		goto errout;

	err = tbl->lookup(tbl, flp, (struct dn_fib_res *)arg->result);
	if (err > 0)
		err = -EAGAIN;
errout:
	return err;
}