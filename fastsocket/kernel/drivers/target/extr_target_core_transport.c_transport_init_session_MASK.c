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
struct se_session {int /*<<< orphan*/  sess_kref; int /*<<< orphan*/  sess_cmd_lock; int /*<<< orphan*/  sess_wait_list; int /*<<< orphan*/  sess_cmd_list; int /*<<< orphan*/  sess_acl_list; int /*<<< orphan*/  sess_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct se_session* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct se_session* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  se_sess_cache ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct se_session *FUNC6(void)
{
	struct se_session *se_sess;

	se_sess = FUNC2(se_sess_cache, GFP_KERNEL);
	if (!se_sess) {
		FUNC4("Unable to allocate struct se_session from"
				" se_sess_cache\n");
		return FUNC0(-ENOMEM);
	}
	FUNC1(&se_sess->sess_list);
	FUNC1(&se_sess->sess_acl_list);
	FUNC1(&se_sess->sess_cmd_list);
	FUNC1(&se_sess->sess_wait_list);
	FUNC5(&se_sess->sess_cmd_lock);
	FUNC3(&se_sess->sess_kref);

	return se_sess;
}