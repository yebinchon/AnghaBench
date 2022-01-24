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
struct se_hba {TYPE_1__* transport; int /*<<< orphan*/  hba_id; int /*<<< orphan*/  hba_node; int /*<<< orphan*/  dev_count; } ;
struct TYPE_2__ {scalar_t__ owner; int /*<<< orphan*/  (* detach_hba ) (struct se_hba*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hba_lock ; 
 int /*<<< orphan*/  FUNC1 (struct se_hba*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct se_hba*) ; 

int
FUNC8(struct se_hba *hba)
{
	FUNC0(hba->dev_count);

	hba->transport->detach_hba(hba);

	FUNC5(&hba_lock);
	FUNC2(&hba->hba_node);
	FUNC6(&hba_lock);

	FUNC4("CORE_HBA[%d] - Detached HBA from Generic Target"
			" Core\n", hba->hba_id);

	if (hba->transport->owner)
		FUNC3(hba->transport->owner);

	hba->transport = NULL;
	FUNC1(hba);
	return 0;
}