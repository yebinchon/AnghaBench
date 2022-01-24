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
typedef  int /*<<< orphan*/  u32 ;
struct se_hba {TYPE_1__* transport; scalar_t__ hba_id; int /*<<< orphan*/  hba_node; int /*<<< orphan*/  hba_flags; int /*<<< orphan*/  hba_index; int /*<<< orphan*/  hba_access_mutex; int /*<<< orphan*/  device_lock; } ;
struct TYPE_2__ {int (* attach_hba ) (struct se_hba*,int /*<<< orphan*/ ) ;scalar_t__ owner; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct se_hba* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SCSI_INST_INDEX ; 
 TYPE_1__* FUNC1 (char const*) ; 
 int /*<<< orphan*/  hba_id_counter ; 
 int /*<<< orphan*/  hba_list ; 
 int /*<<< orphan*/  hba_lock ; 
 int /*<<< orphan*/  FUNC2 (struct se_hba*) ; 
 struct se_hba* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (struct se_hba*,int /*<<< orphan*/ ) ; 

struct se_hba *
FUNC14(const char *plugin_name, u32 plugin_dep_id, u32 hba_flags)
{
	struct se_hba *hba;
	int ret = 0;

	hba = FUNC3(sizeof(*hba), GFP_KERNEL);
	if (!hba) {
		FUNC8("Unable to allocate struct se_hba\n");
		return FUNC0(-ENOMEM);
	}

	FUNC11(&hba->device_lock);
	FUNC6(&hba->hba_access_mutex);

	hba->hba_index = FUNC9(SCSI_INST_INDEX);
	hba->hba_flags |= hba_flags;

	hba->transport = FUNC1(plugin_name);
	if (!hba->transport) {
		ret = -EINVAL;
		goto out_free_hba;
	}

	ret = hba->transport->attach_hba(hba, plugin_dep_id);
	if (ret < 0)
		goto out_module_put;

	FUNC10(&hba_lock);
	hba->hba_id = hba_id_counter++;
	FUNC4(&hba->hba_node, &hba_list);
	FUNC12(&hba_lock);

	FUNC7("CORE_HBA[%d] - Attached HBA to Generic Target"
			" Core\n", hba->hba_id);

	return hba;

out_module_put:
	if (hba->transport->owner)
		FUNC5(hba->transport->owner);
	hba->transport = NULL;
out_free_hba:
	FUNC2(hba);
	return FUNC0(ret);
}