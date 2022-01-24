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
struct pohmelfs_sb {int /*<<< orphan*/  perform_crypto; int /*<<< orphan*/  cipher_string; int /*<<< orphan*/  hash_string; } ;
struct netfs_trans {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct netfs_trans*) ; 
 int FUNC1 (struct netfs_trans*,struct pohmelfs_sb*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pohmelfs_sb*,int /*<<< orphan*/ ,struct netfs_trans*) ; 
 int /*<<< orphan*/  pohmelfs_trans_crypt_action ; 

int FUNC3(struct netfs_trans *trans, struct pohmelfs_sb *psb)
{
	if ((!psb->hash_string && !psb->cipher_string) || !psb->perform_crypto) {
		FUNC0(trans);
		return FUNC1(trans, psb, 0);
	}

	return FUNC2(psb, pohmelfs_trans_crypt_action, trans);
}