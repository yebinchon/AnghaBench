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
struct xdr_netobj {int /*<<< orphan*/ * data; int /*<<< orphan*/  len; } ;
struct scatterlist {int /*<<< orphan*/  length; } ;
struct hash_desc {int /*<<< orphan*/  tfm; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_ASYNC ; 
 int /*<<< orphan*/  CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct hash_desc*,struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfs_ok ; 
 int /*<<< orphan*/  nfserr_resource ; 
 int /*<<< orphan*/  FUNC9 (struct scatterlist*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__be32
FUNC10(char *dname, struct xdr_netobj *clname)
{
	struct xdr_netobj cksum;
	struct hash_desc desc;
	struct scatterlist sg;
	__be32 status = nfserr_resource;

	FUNC5("NFSD: nfs4_make_rec_clidname for %.*s\n",
			clname->len, clname->data);
	desc.flags = CRYPTO_TFM_REQ_MAY_SLEEP;
	desc.tfm = FUNC1("md5", 0, CRYPTO_ALG_ASYNC);
	if (FUNC0(desc.tfm))
		goto out_no_tfm;
	cksum.len = FUNC4(desc.tfm);
	cksum.data = FUNC7(cksum.len, GFP_KERNEL);
	if (cksum.data == NULL)
 		goto out;

	FUNC9(&sg, clname->data, clname->len);

	if (FUNC3(&desc, &sg, sg.length, cksum.data))
		goto out;

	FUNC8(dname, cksum.data);

	status = nfs_ok;
out:
	FUNC6(cksum.data);
	FUNC2(desc.tfm);
out_no_tfm:
	return status;
}