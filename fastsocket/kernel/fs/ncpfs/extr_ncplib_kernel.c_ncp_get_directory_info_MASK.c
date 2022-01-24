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
struct ncp_volume_info {int /*<<< orphan*/  volume_name; void* sectors_per_block; void* available_dir_entries; void* total_dir_entries; scalar_t__ not_yet_purgeable_blocks; scalar_t__ purgeable_blocks; void* free_blocks; void* total_blocks; } ;
struct ncp_server {int dummy; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EIO ; 
 int NCP_VOLNAME_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ncp_server*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ncp_server*,int) ; 
 void* FUNC5 (struct ncp_server*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ncp_server*,int) ; 
 void* FUNC7 (struct ncp_server*,int) ; 
 int FUNC8 (struct ncp_server*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ncp_server*) ; 

int FUNC10(struct ncp_server* server, __u8 n, 
			   struct ncp_volume_info* target) {
	int result;
	int len;

	FUNC4(server, 45);
	FUNC3(server, n);

	if ((result = FUNC8(server, 22)) != 0) {
		goto out;
	}
	target->total_blocks = FUNC7(server, 0);
	target->free_blocks = FUNC7(server, 4);
	target->purgeable_blocks = 0;
	target->not_yet_purgeable_blocks = 0;
	target->total_dir_entries = FUNC7(server, 8);
	target->available_dir_entries = FUNC7(server, 12);
	target->sectors_per_block = FUNC5(server, 20);

	FUNC2(&(target->volume_name), 0, sizeof(target->volume_name));

	result = -EIO;
	len = FUNC5(server, 21);
	if (len > NCP_VOLNAME_LEN) {
		FUNC0("ncpfs: volume name too long: %d\n", len);
		goto out;
	}
	FUNC1(&(target->volume_name), FUNC6(server, 22), len);
	result = 0;
out:
	FUNC9(server);
	return result;
}