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
struct xdr_buf {scalar_t__ len; } ;
struct scatterlist {int /*<<< orphan*/  length; } ;
struct hash_desc {int /*<<< orphan*/  tfm; int /*<<< orphan*/  flags; } ;
typedef  int s32 ;

/* Variables and functions */
#define  CKSUMTYPE_HMAC_MD5 128 
 int /*<<< orphan*/  CRYPTO_ALG_ASYNC ; 
 int /*<<< orphan*/  CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int GSS_S_FAILURE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hash_desc*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct hash_desc*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hash_desc*,struct scatterlist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct scatterlist*,char*,unsigned int) ; 
 int /*<<< orphan*/  spkm3_checksummer ; 
 int /*<<< orphan*/  FUNC10 (struct xdr_buf*,unsigned int,scalar_t__,int /*<<< orphan*/ ,struct hash_desc*) ; 

s32
FUNC11(s32 cksumtype, struct xdr_netobj *key, char *header,
		    unsigned int hdrlen, struct xdr_buf *body,
		    unsigned int body_offset, struct xdr_netobj *cksum)
{
	char				*cksumname;
	struct hash_desc		desc; /* XXX add to ctx? */
	struct scatterlist		sg[1];
	int err;

	switch (cksumtype) {
		case CKSUMTYPE_HMAC_MD5:
			cksumname = "hmac(md5)";
			break;
		default:
			FUNC8("RPC:       spkm3_make_checksum:"
					" unsupported checksum %d", cksumtype);
			return GSS_S_FAILURE;
	}

	if (key->data == NULL || key->len <= 0) return GSS_S_FAILURE;

	desc.tfm = FUNC1(cksumname, 0, CRYPTO_ALG_ASYNC);
	if (FUNC0(desc.tfm))
		return GSS_S_FAILURE;
	cksum->len = FUNC3(desc.tfm);
	desc.flags = CRYPTO_TFM_REQ_MAY_SLEEP;

	err = FUNC6(desc.tfm, key->data, key->len);
	if (err)
		goto out;

	err = FUNC5(&desc);
	if (err)
		goto out;

	FUNC9(sg, header, hdrlen);
	FUNC7(&desc, sg, sg->length);

	FUNC10(body, body_offset, body->len - body_offset,
			spkm3_checksummer, &desc);
	FUNC4(&desc, cksum->data);

out:
	FUNC2(desc.tfm);

	return err ? GSS_S_FAILURE : 0;
}