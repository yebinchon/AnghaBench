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
struct scatterlist {int dummy; } ;
struct ecryptfs_crypt_stat {int flags; int key_size; int /*<<< orphan*/  cs_tfm_mutex; int /*<<< orphan*/  key; int /*<<< orphan*/  tfm; } ;
struct blkcipher_desc {unsigned char* info; int /*<<< orphan*/  flags; int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int ECRYPTFS_KEY_SET ; 
 int ECRYPTFS_STRUCT_INITIALIZED ; 
 int EINVAL ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC1 (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ ecryptfs_verbosity ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct ecryptfs_crypt_stat *crypt_stat,
			       struct scatterlist *dest_sg,
			       struct scatterlist *src_sg, int size,
			       unsigned char *iv)
{
	struct blkcipher_desc desc = {
		.tfm = crypt_stat->tfm,
		.info = iv,
		.flags = CRYPTO_TFM_REQ_MAY_SLEEP
	};
	int rc = 0;

	FUNC0(!crypt_stat || !crypt_stat->tfm
	       || !(crypt_stat->flags & ECRYPTFS_STRUCT_INITIALIZED));
	if (FUNC7(ecryptfs_verbosity > 0)) {
		FUNC4(KERN_DEBUG, "Key size [%d]; key:\n",
				crypt_stat->key_size);
		FUNC3(crypt_stat->key,
				  crypt_stat->key_size);
	}
	/* Consider doing this once, when the file is opened */
	FUNC5(&crypt_stat->cs_tfm_mutex);
	if (!(crypt_stat->flags & ECRYPTFS_KEY_SET)) {
		rc = FUNC2(crypt_stat->tfm, crypt_stat->key,
					     crypt_stat->key_size);
		crypt_stat->flags |= ECRYPTFS_KEY_SET;
	}
	if (rc) {
		FUNC4(KERN_ERR, "Error setting key; rc = [%d]\n",
				rc);
		FUNC6(&crypt_stat->cs_tfm_mutex);
		rc = -EINVAL;
		goto out;
	}
	FUNC4(KERN_DEBUG, "Encrypting [%d] bytes.\n", size);
	FUNC1(&desc, dest_sg, src_sg, size);
	FUNC6(&crypt_stat->cs_tfm_mutex);
out:
	return rc;
}