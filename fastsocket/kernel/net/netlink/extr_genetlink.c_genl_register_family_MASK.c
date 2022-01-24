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
typedef  scalar_t__ u16 ;
struct nlattr {int dummy; } ;
struct genl_family {scalar_t__ id; int maxattr; int /*<<< orphan*/  family_list; int /*<<< orphan*/ * attrbuf; int /*<<< orphan*/  name; int /*<<< orphan*/  mcast_groups; int /*<<< orphan*/  ops_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_CMD_NEWFAMILY ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ GENL_ID_GENERATE ; 
 scalar_t__ GENL_MAX_ID ; 
 scalar_t__ GENL_MIN_ID ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct genl_family*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC10(struct genl_family *family)
{
	int err = -EINVAL;

	if (family->id && family->id < GENL_MIN_ID)
		goto errout;

	if (family->id > GENL_MAX_ID)
		goto errout;

	FUNC0(&family->ops_list);
	FUNC0(&family->mcast_groups);

	FUNC6();

	if (FUNC4(family->name)) {
		err = -EEXIST;
		goto errout_locked;
	}

	if (FUNC3(family->id)) {
		err = -EEXIST;
		goto errout_locked;
	}

	if (family->id == GENL_ID_GENERATE) {
		u16 newid = FUNC5();

		if (!newid) {
			err = -ENOMEM;
			goto errout_locked;
		}

		family->id = newid;
	}

	if (family->maxattr) {
		family->attrbuf = FUNC8((family->maxattr+1) *
					sizeof(struct nlattr *), GFP_KERNEL);
		if (family->attrbuf == NULL) {
			err = -ENOMEM;
			goto errout_locked;
		}
	} else
		family->attrbuf = NULL;

	FUNC9(&family->family_list, FUNC2(family->id));
	FUNC7();

	FUNC1(CTRL_CMD_NEWFAMILY, family);

	return 0;

errout_locked:
	FUNC7();
errout:
	return err;
}