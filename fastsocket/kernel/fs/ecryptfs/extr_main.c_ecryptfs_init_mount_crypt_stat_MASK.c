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
struct ecryptfs_mount_crypt_stat {int /*<<< orphan*/  flags; int /*<<< orphan*/  global_auth_tok_list_mutex; int /*<<< orphan*/  global_auth_tok_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECRYPTFS_MOUNT_CRYPT_STAT_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(
	struct ecryptfs_mount_crypt_stat *mount_crypt_stat)
{
	FUNC1((void *)mount_crypt_stat, 0,
	       sizeof(struct ecryptfs_mount_crypt_stat));
	FUNC0(&mount_crypt_stat->global_auth_tok_list);
	FUNC2(&mount_crypt_stat->global_auth_tok_list_mutex);
	mount_crypt_stat->flags |= ECRYPTFS_MOUNT_CRYPT_STAT_INITIALIZED;
}