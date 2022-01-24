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
struct xt_target {int /*<<< orphan*/  me; } ;
struct xt_mtchk_param {char const* table; int /*<<< orphan*/  family; int /*<<< orphan*/  hook_mask; int /*<<< orphan*/ * entryinfo; } ;
struct TYPE_5__ {struct xt_target* target; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  revision; } ;
struct TYPE_6__ {TYPE_2__ kernel; TYPE_1__ user; } ;
struct ipt_entry_target {TYPE_3__ u; } ;
struct ipt_entry {int /*<<< orphan*/  comefrom; int /*<<< orphan*/  ip; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int ENOENT ; 
 int FUNC0 (struct ipt_entry*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC1 (struct xt_target*) ; 
 int /*<<< orphan*/  NFPROTO_IPV4 ; 
 int FUNC2 (struct xt_target*) ; 
 int FUNC3 (struct ipt_entry*,char const*) ; 
 int FUNC4 (struct ipt_entry*,char const*) ; 
 int /*<<< orphan*/  cleanup_match ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  find_check_match ; 
 struct ipt_entry_target* FUNC6 (struct ipt_entry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct xt_target* FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct ipt_entry *e, const char *name, unsigned int size,
		 unsigned int *i)
{
	struct ipt_entry_target *t;
	struct xt_target *target;
	int ret;
	unsigned int j;
	struct xt_mtchk_param mtpar;

	ret = FUNC3(e, name);
	if (ret)
		return ret;

	j = 0;
	mtpar.table     = name;
	mtpar.entryinfo = &e->ip;
	mtpar.hook_mask = e->comefrom;
	mtpar.family    = NFPROTO_IPV4;
	ret = FUNC0(e, find_check_match, &mtpar, &j);
	if (ret != 0)
		goto cleanup_matches;

	t = FUNC6(e);
	target = FUNC8(FUNC9(AF_INET,
							t->u.user.name,
							t->u.user.revision),
					 "ipt_%s", t->u.user.name);
	if (FUNC1(target) || !target) {
		FUNC5("find_check_entry: `%s' not found\n", t->u.user.name);
		ret = target ? FUNC2(target) : -ENOENT;
		goto cleanup_matches;
	}
	t->u.kernel.target = target;

	ret = FUNC4(e, name);
	if (ret)
		goto err;

	(*i)++;
	return 0;
 err:
	FUNC7(t->u.kernel.target->me);
 cleanup_matches:
	FUNC0(e, cleanup_match, &j);
	return ret;
}