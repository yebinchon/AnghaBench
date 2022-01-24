#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct xt_tgchk_param {char const* table; int /*<<< orphan*/  family; int /*<<< orphan*/  hook_mask; int /*<<< orphan*/  targinfo; TYPE_2__* target; struct ip6t_entry* entryinfo; } ;
struct TYPE_7__ {TYPE_2__* target; } ;
struct TYPE_8__ {TYPE_3__ kernel; scalar_t__ target_size; } ;
struct ip6t_entry_target {TYPE_4__ u; int /*<<< orphan*/  data; } ;
struct TYPE_5__ {int invflags; int /*<<< orphan*/  proto; } ;
struct ip6t_entry {TYPE_1__ ipv6; int /*<<< orphan*/  comefrom; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int IP6T_INV_PROTO ; 
 int /*<<< orphan*/  NFPROTO_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 struct ip6t_entry_target* FUNC1 (struct ip6t_entry*) ; 
 int FUNC2 (struct xt_tgchk_param*,scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct ip6t_entry *e, const char *name)
{
	struct ip6t_entry_target *t = FUNC1(e);
	struct xt_tgchk_param par = {
		.table     = name,
		.entryinfo = e,
		.target    = t->u.kernel.target,
		.targinfo  = t->data,
		.hook_mask = e->comefrom,
		.family    = NFPROTO_IPV6,
	};
	int ret;

	t = FUNC1(e);
	ret = FUNC2(&par, t->u.target_size - sizeof(*t),
	      e->ipv6.proto, e->ipv6.invflags & IP6T_INV_PROTO);
	if (ret < 0) {
		FUNC0("ip_tables: check failed for `%s'.\n",
			 t->u.kernel.target->name);
		return ret;
	}
	return 0;
}