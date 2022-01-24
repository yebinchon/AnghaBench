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
typedef  int /*<<< orphan*/  u32 ;
struct se_hba {int /*<<< orphan*/  hba_id; struct rd_host* hba_ptr; } ;
struct rd_host {int /*<<< orphan*/  rd_host_id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RD_HBA_VERSION ; 
 int /*<<< orphan*/  TARGET_CORE_MOD_VERSION ; 
 struct rd_host* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct se_hba *hba, u32 host_id)
{
	struct rd_host *rd_host;

	rd_host = FUNC0(sizeof(struct rd_host), GFP_KERNEL);
	if (!rd_host) {
		FUNC2("Unable to allocate memory for struct rd_host\n");
		return -ENOMEM;
	}

	rd_host->rd_host_id = host_id;

	hba->hba_ptr = rd_host;

	FUNC1("CORE_HBA[%d] - TCM Ramdisk HBA Driver %s on"
		" Generic Target Core Stack %s\n", hba->hba_id,
		RD_HBA_VERSION, TARGET_CORE_MOD_VERSION);

	return 0;
}