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
struct nsm_handle {int /*<<< orphan*/  sm_addrbuf; int /*<<< orphan*/  sm_name; int /*<<< orphan*/  sm_link; int /*<<< orphan*/  sm_count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nsm_handle*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nsm_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct nsm_handle *nsm)
{
	if (FUNC0(&nsm->sm_count, &nsm_lock)) {
		FUNC3(&nsm->sm_link);
		FUNC4(&nsm_lock);
		FUNC1("lockd: destroyed nsm_handle for %s (%s)\n",
				nsm->sm_name, nsm->sm_addrbuf);
		FUNC2(nsm);
	}
}