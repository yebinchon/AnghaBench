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
struct ecryptfs_crypt_stat {int /*<<< orphan*/  key_size; int /*<<< orphan*/  key; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECRYPTFS_KEY_VALID ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct ecryptfs_crypt_stat*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ecryptfs_verbosity ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct ecryptfs_crypt_stat *crypt_stat)
{
	FUNC3(crypt_stat->key, crypt_stat->key_size);
	crypt_stat->flags |= ECRYPTFS_KEY_VALID;
	FUNC0(crypt_stat);
	if (FUNC4(ecryptfs_verbosity > 0)) {
		FUNC2(KERN_DEBUG, "Generated new session key:\n");
		FUNC1(crypt_stat->key,
				  crypt_stat->key_size);
	}
}