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
struct key {int dummy; } ;
struct ecryptfs_mount_crypt_stat {int dummy; } ;
struct ecryptfs_global_auth_tok {struct ecryptfs_auth_tok* global_auth_tok; } ;
struct ecryptfs_auth_tok {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ecryptfs_global_auth_tok**,struct ecryptfs_mount_crypt_stat*,char*) ; 
 int FUNC1 (struct key**,struct ecryptfs_auth_tok**,char*) ; 

__attribute__((used)) static int
FUNC2(
	struct ecryptfs_auth_tok **auth_tok,
	struct ecryptfs_mount_crypt_stat *mount_crypt_stat,
	char *sig)
{
	struct ecryptfs_global_auth_tok *global_auth_tok;
	int rc = 0;

	(*auth_tok) = NULL;
	if (FUNC0(&global_auth_tok,
						  mount_crypt_stat, sig)) {
		struct key *auth_tok_key;

		rc = FUNC1(&auth_tok_key, auth_tok,
						       sig);
	} else
		(*auth_tok) = global_auth_tok->global_auth_tok;
	return rc;
}