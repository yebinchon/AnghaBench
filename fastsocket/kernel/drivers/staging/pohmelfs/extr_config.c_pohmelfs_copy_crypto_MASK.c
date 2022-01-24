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
struct pohmelfs_sb {void* hash_string; void* cipher_string; void* hash_key; scalar_t__ cipher_keysize; void* cipher_key; scalar_t__ hash_keysize; int /*<<< orphan*/  cipher_strlen; int /*<<< orphan*/  hash_strlen; int /*<<< orphan*/  idx; } ;
struct pohmelfs_config_group {scalar_t__ cipher_keysize; int /*<<< orphan*/  cipher_key; scalar_t__ hash_keysize; int /*<<< orphan*/  hash_key; int /*<<< orphan*/  cipher_strlen; scalar_t__ cipher_string; int /*<<< orphan*/  hash_strlen; scalar_t__ hash_string; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pohmelfs_config_lock ; 
 struct pohmelfs_config_group* FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct pohmelfs_sb *psb)
{
	struct pohmelfs_config_group *g;
	int err = -ENOENT;

	FUNC4(&pohmelfs_config_lock);
	g = FUNC6(psb->idx);
	if (!g)
		goto err_out_exit;

	if (g->hash_string) {
		err = -ENOMEM;
		psb->hash_string = FUNC2(g->hash_string, GFP_KERNEL);
		if (!psb->hash_string)
			goto err_out_exit;
		psb->hash_strlen = g->hash_strlen;
	}

	if (g->cipher_string) {
		psb->cipher_string = FUNC2(g->cipher_string, GFP_KERNEL);
		if (!psb->cipher_string)
			goto err_out_free_hash_string;
		psb->cipher_strlen = g->cipher_strlen;
	}

	if (g->hash_keysize) {
		psb->hash_key = FUNC1(g->hash_keysize, GFP_KERNEL);
		if (!psb->hash_key)
			goto err_out_free_cipher_string;
		FUNC3(psb->hash_key, g->hash_key, g->hash_keysize);
		psb->hash_keysize = g->hash_keysize;
	}

	if (g->cipher_keysize) {
		psb->cipher_key = FUNC1(g->cipher_keysize, GFP_KERNEL);
		if (!psb->cipher_key)
			goto err_out_free_hash;
		FUNC3(psb->cipher_key, g->cipher_key, g->cipher_keysize);
		psb->cipher_keysize = g->cipher_keysize;
	}

	FUNC5(&pohmelfs_config_lock);

	return 0;

err_out_free_hash:
	FUNC0(psb->hash_key);
err_out_free_cipher_string:
	FUNC0(psb->cipher_string);
err_out_free_hash_string:
	FUNC0(psb->hash_string);
err_out_exit:
	FUNC5(&pohmelfs_config_lock);
	return err;
}