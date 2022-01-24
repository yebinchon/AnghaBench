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
struct crypto_blkcipher {int dummy; } ;
struct blkcipher_desc {struct crypto_blkcipher* tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_ASYNC ; 
 scalar_t__ FUNC0 (struct crypto_blkcipher*) ; 
 int FUNC1 (struct crypto_blkcipher*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 struct crypto_blkcipher* FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_blkcipher*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_blkcipher*) ; 
 int /*<<< orphan*/  FUNC7 (struct scatterlist*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,unsigned char*) ; 

__attribute__((used)) static int
FUNC9(unsigned char *out, const unsigned char *in, unsigned char *key)
{
	int rc;
	unsigned char key2[8];
	struct crypto_blkcipher *tfm_des;
	struct scatterlist sgin, sgout;
	struct blkcipher_desc desc;

	FUNC8(key, key2);

	tfm_des = FUNC3("ecb(des)", 0, CRYPTO_ALG_ASYNC);
	if (FUNC0(tfm_des)) {
		rc = FUNC1(tfm_des);
		FUNC2(1, "could not allocate des crypto API\n");
		goto smbhash_err;
	}

	desc.tfm = tfm_des;

	FUNC5(tfm_des, key2, 8);

	FUNC7(&sgin, in, 8);
	FUNC7(&sgout, out, 8);

	rc = FUNC4(&desc, &sgout, &sgin, 8);
	if (rc)
		FUNC2(1, "could not encrypt crypt key rc: %d\n", rc);

	FUNC6(tfm_des);
smbhash_err:
	return rc;
}