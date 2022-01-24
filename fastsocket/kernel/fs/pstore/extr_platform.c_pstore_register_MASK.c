#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pstore_info {int /*<<< orphan*/  name; int /*<<< orphan*/  read_mutex; struct module* owner; } ;
struct module {int dummy; } ;
struct TYPE_3__ {scalar_t__ expires; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int EPERM ; 
 scalar_t__ PSTORE_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ backend ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 struct pstore_info* psinfo ; 
 int /*<<< orphan*/  pstore_dumper ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  pstore_lock ; 
 TYPE_1__ pstore_timer ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct module*) ; 

int FUNC10(struct pstore_info *psi)
{
	struct module *owner = psi->owner;

	if (backend && FUNC8(backend, psi->name))
		return -EPERM;

	FUNC6(&pstore_lock);
	if (psinfo) {
		FUNC7(&pstore_lock);
		return -EBUSY;
	}

	psinfo = psi;
	FUNC2(&psinfo->read_mutex);
	FUNC7(&pstore_lock);

	if (owner && !FUNC9(owner)) {
		psinfo = NULL;
		return -EINVAL;
	}

	if (FUNC5())
		FUNC4(0);

	FUNC1(&pstore_dumper);

	pstore_timer.expires = jiffies + PSTORE_INTERVAL;
	FUNC0(&pstore_timer);

	FUNC3("pstore: Registered %s as persistent store backend\n",
		psi->name);

	return 0;
}