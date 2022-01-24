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
struct ecryptfs_crypt_stat {int /*<<< orphan*/  cs_tfm_mutex; int /*<<< orphan*/  key_size; int /*<<< orphan*/  key; int /*<<< orphan*/  tfm; } ;
struct blkcipher_desc {unsigned char* info; int /*<<< orphan*/  flags; int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int EINVAL ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int FUNC0 (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ecryptfs_crypt_stat *crypt_stat,
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

	/* Consider doing this once, when the file is opened */
	FUNC3(&crypt_stat->cs_tfm_mutex);
	rc = FUNC1(crypt_stat->tfm, crypt_stat->key,
				     crypt_stat->key_size);
	if (rc) {
		FUNC2(KERN_ERR, "Error setting key; rc = [%d]\n",
				rc);
		FUNC4(&crypt_stat->cs_tfm_mutex);
		rc = -EINVAL;
		goto out;
	}
	FUNC2(KERN_DEBUG, "Decrypting [%d] bytes.\n", size);
	rc = FUNC0(&desc, dest_sg, src_sg, size);
	FUNC4(&crypt_stat->cs_tfm_mutex);
	if (rc) {
		FUNC2(KERN_ERR, "Error decrypting; rc = [%d]\n",
				rc);
		goto out;
	}
	rc = size;
out:
	return rc;
}