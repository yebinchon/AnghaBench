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
struct ecryptfs_crypt_stat {int /*<<< orphan*/  flags; int /*<<< orphan*/  cs_hash_tfm_mutex; int /*<<< orphan*/  cs_tfm_mutex; int /*<<< orphan*/  cs_mutex; int /*<<< orphan*/  keysig_list_mutex; int /*<<< orphan*/  keysig_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECRYPTFS_STRUCT_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct ecryptfs_crypt_stat *crypt_stat)
{
	FUNC1((void *)crypt_stat, 0, sizeof(struct ecryptfs_crypt_stat));
	FUNC0(&crypt_stat->keysig_list);
	FUNC2(&crypt_stat->keysig_list_mutex);
	FUNC2(&crypt_stat->cs_mutex);
	FUNC2(&crypt_stat->cs_tfm_mutex);
	FUNC2(&crypt_stat->cs_hash_tfm_mutex);
	crypt_stat->flags |= ECRYPTFS_STRUCT_INITIALIZED;
}