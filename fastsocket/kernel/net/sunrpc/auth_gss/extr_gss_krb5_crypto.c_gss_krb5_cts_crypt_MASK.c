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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct xdr_buf {int len; struct page** pages; } ;
struct scatterlist {int dummy; } ;
struct page {int dummy; } ;
struct crypto_blkcipher {int dummy; } ;
struct blkcipher_desc {int /*<<< orphan*/ * info; struct crypto_blkcipher* tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct crypto_blkcipher*) ; 
 int FUNC2 (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,int) ; 
 int FUNC3 (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,int) ; 
 int FUNC4 (struct xdr_buf*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct scatterlist*,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (struct xdr_buf*,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static u32
FUNC7(struct crypto_blkcipher *cipher, struct xdr_buf *buf,
		   u32 offset, u8 *iv, struct page **pages, int encrypt)
{
	u32 ret;
	struct scatterlist sg[1];
	struct blkcipher_desc desc = { .tfm = cipher, .info = iv };
	u8 data[FUNC1(cipher) * 2];
	struct page **save_pages;
	u32 len = buf->len - offset;

	FUNC0(len > FUNC1(cipher) * 2);

	/*
	 * For encryption, we want to read from the cleartext
	 * page cache pages, and write the encrypted data to
	 * the supplied xdr_buf pages.
	 */
	save_pages = buf->pages;
	if (encrypt)
		buf->pages = pages;

	ret = FUNC4(buf, offset, data, len);
	buf->pages = save_pages;
	if (ret)
		goto out;

	FUNC5(sg, data, len);

	if (encrypt)
		ret = FUNC3(&desc, sg, sg, len);
	else
		ret = FUNC2(&desc, sg, sg, len);

	if (ret)
		goto out;

	ret = FUNC6(buf, offset, data, len);

out:
	return ret;
}