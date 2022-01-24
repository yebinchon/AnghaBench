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
struct ecryptfs_mount_crypt_stat {int dummy; } ;
struct ecryptfs_crypt_stat {struct ecryptfs_mount_crypt_stat* mount_crypt_stat; int /*<<< orphan*/  file_version; int /*<<< orphan*/  flags; int /*<<< orphan*/  key_size; int /*<<< orphan*/  cipher; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECRYPTFS_DEFAULT_CIPHER ; 
 int /*<<< orphan*/  ECRYPTFS_DEFAULT_KEY_BYTES ; 
 int /*<<< orphan*/  ECRYPTFS_FILE_VERSION ; 
 int /*<<< orphan*/  ECRYPTFS_KEY_VALID ; 
 int /*<<< orphan*/  FUNC0 (struct ecryptfs_crypt_stat*,struct ecryptfs_mount_crypt_stat*) ; 
 int /*<<< orphan*/  FUNC1 (struct ecryptfs_crypt_stat*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(
	struct ecryptfs_crypt_stat *crypt_stat,
	struct ecryptfs_mount_crypt_stat *mount_crypt_stat)
{
	FUNC0(crypt_stat,
						      mount_crypt_stat);
	FUNC1(crypt_stat);
	FUNC2(crypt_stat->cipher, ECRYPTFS_DEFAULT_CIPHER);
	crypt_stat->key_size = ECRYPTFS_DEFAULT_KEY_BYTES;
	crypt_stat->flags &= ~(ECRYPTFS_KEY_VALID);
	crypt_stat->file_version = ECRYPTFS_FILE_VERSION;
	crypt_stat->mount_crypt_stat = mount_crypt_stat;
}