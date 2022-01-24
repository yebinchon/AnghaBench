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
struct se_hba {int /*<<< orphan*/  hba_id; struct fd_host* hba_ptr; } ;
struct fd_host {int /*<<< orphan*/  fd_host_id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FD_MAX_SECTORS ; 
 int /*<<< orphan*/  FD_VERSION ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TARGET_CORE_MOD_VERSION ; 
 struct fd_host* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct se_hba *hba, u32 host_id)
{
	struct fd_host *fd_host;

	fd_host = FUNC0(sizeof(struct fd_host), GFP_KERNEL);
	if (!fd_host) {
		FUNC2("Unable to allocate memory for struct fd_host\n");
		return -ENOMEM;
	}

	fd_host->fd_host_id = host_id;

	hba->hba_ptr = fd_host;

	FUNC1("CORE_HBA[%d] - TCM FILEIO HBA Driver %s on Generic"
		" Target Core Stack %s\n", hba->hba_id, FD_VERSION,
		TARGET_CORE_MOD_VERSION);
	FUNC1("CORE_HBA[%d] - Attached FILEIO HBA: %u to Generic"
		" MaxSectors: %u\n",
		hba->hba_id, fd_host->fd_host_id, FD_MAX_SECTORS);

	return 0;
}