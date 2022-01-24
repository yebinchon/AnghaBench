#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xdr_buf {int len; } ;
struct TYPE_2__ {scalar_t__ flags; int /*<<< orphan*/  info; struct crypto_blkcipher* tfm; } ;
struct decryptor_desc {int /*<<< orphan*/  frags; scalar_t__ fraglen; scalar_t__ fragno; TYPE_1__ desc; int /*<<< orphan*/  iv; } ;
struct crypto_blkcipher {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct crypto_blkcipher*) ; 
 int /*<<< orphan*/  decryptor ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct xdr_buf*,int,int,int /*<<< orphan*/ ,struct decryptor_desc*) ; 

int
FUNC5(struct crypto_blkcipher *tfm, struct xdr_buf *buf,
		    int offset)
{
	struct decryptor_desc desc;

	/* XXXJBF: */
	FUNC0((buf->len - offset) % FUNC1(tfm) != 0);

	FUNC2(desc.iv, 0, sizeof(desc.iv));
	desc.desc.tfm = tfm;
	desc.desc.info = desc.iv;
	desc.desc.flags = 0;
	desc.fragno = 0;
	desc.fraglen = 0;

	FUNC3(desc.frags, 4);

	return FUNC4(buf, offset, buf->len - offset, decryptor, &desc);
}