#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ dim; int /*<<< orphan*/  index; } ;
struct xt_set_info_match {TYPE_1__ match_set; } ;
struct xt_mtchk_param {struct xt_set_info_match* matchinfo; } ;
typedef  scalar_t__ ip_set_id_t ;

/* Variables and functions */
 scalar_t__ IPSET_DIM_MAX ; 
 scalar_t__ IPSET_INVALID_ID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static bool
FUNC3(const struct xt_mtchk_param *par)
{
	struct xt_set_info_match *info = par->matchinfo;
	ip_set_id_t index;

	index = FUNC0(info->match_set.index);

	if (index == IPSET_INVALID_ID) {
		FUNC2("Cannot find set indentified by id %u to match\n",
			   info->match_set.index);
		return false;
	}
	if (info->match_set.dim > IPSET_DIM_MAX) {
		FUNC2("Protocol error: set match dimension "
			   "is over the limit!\n");
		FUNC1(info->match_set.index);
		return false;
	}

	return true;
}