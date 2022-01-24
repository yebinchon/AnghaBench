#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__* flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  index; TYPE_1__ u; } ;
struct xt_set_info_match_v0 {TYPE_2__ match_set; } ;
struct xt_mtchk_param {struct xt_set_info_match_v0* matchinfo; } ;
typedef  scalar_t__ ip_set_id_t ;

/* Variables and functions */
 int IPSET_DIM_MAX ; 
 scalar_t__ IPSET_INVALID_ID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static bool
FUNC4(const struct xt_mtchk_param *par)
{
	struct xt_set_info_match_v0 *info = par->matchinfo;
	ip_set_id_t index;

	index = FUNC1(info->match_set.index);

	if (index == IPSET_INVALID_ID) {
		FUNC3("Cannot find set indentified by id %u to match\n",
			   info->match_set.index);
		return false;
	}
	if (info->match_set.u.flags[IPSET_DIM_MAX-1] != 0) {
		FUNC3("Protocol error: set match dimension "
			   "is over the limit!\n");
		FUNC2(info->match_set.index);
		return false;
	}

	/* Fill out compatibility data */
	FUNC0(&info->match_set);

	return true;
}