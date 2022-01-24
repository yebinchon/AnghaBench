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
struct TYPE_5__ {struct xt_target* target; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  revision; } ;
struct TYPE_6__ {TYPE_2__ kernel; TYPE_1__ user; } ;
struct arpt_entry_target {TYPE_3__ u; } ;
struct arpt_entry {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (struct xt_target*) ; 
 int /*<<< orphan*/  NFPROTO_ARP ; 
 int FUNC1 (struct xt_target*) ; 
 struct arpt_entry_target* FUNC2 (struct arpt_entry*) ; 
 int FUNC3 (struct arpt_entry*,char const*) ; 
 int FUNC4 (struct arpt_entry*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct xt_target* FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC9(struct arpt_entry *e, const char *name, unsigned int size,
		 unsigned int *i)
{
	struct arpt_entry_target *t;
	struct xt_target *target;
	int ret;

	ret = FUNC3(e, name);
	if (ret)
		return ret;

	t = FUNC2(e);
	target = FUNC7(FUNC8(NFPROTO_ARP,
							t->u.user.name,
							t->u.user.revision),
					 "arpt_%s", t->u.user.name);
	if (FUNC0(target) || !target) {
		FUNC5("find_check_entry: `%s' not found\n", t->u.user.name);
		ret = target ? FUNC1(target) : -ENOENT;
		goto out;
	}
	t->u.kernel.target = target;

	ret = FUNC4(e, name);
	if (ret)
		goto err;

	(*i)++;
	return 0;
err:
	FUNC6(t->u.kernel.target->me);
out:
	return ret;
}