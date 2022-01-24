#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_5__ {int /*<<< orphan*/  spi; } ;
struct xfrm_state {TYPE_1__ id; struct esp_data* data; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct scatterlist {int dummy; } ;
struct ip_esp_hdr {scalar_t__ enc_data; int /*<<< orphan*/  seq_no; int /*<<< orphan*/  spi; } ;
struct esp_data {int padlen; struct crypto_aead* aead; } ;
struct crypto_aead {int dummy; } ;
struct aead_givcrypt_request {int dummy; } ;
struct TYPE_8__ {void* tmp; } ;
struct TYPE_6__ {int /*<<< orphan*/  output; } ;
struct TYPE_7__ {TYPE_2__ seq; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int EBUSY ; 
 int EINPROGRESS ; 
 int ENOMEM ; 
 TYPE_4__* FUNC1 (struct sk_buff*) ; 
 int IPPROTO_ESP ; 
 int NET_XMIT_DROP ; 
 TYPE_3__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct aead_givcrypt_request*,struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct aead_givcrypt_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct aead_givcrypt_request*,struct scatterlist*,struct scatterlist*,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct aead_givcrypt_request*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct crypto_aead*) ; 
 int FUNC8 (struct crypto_aead*) ; 
 int FUNC9 (struct aead_givcrypt_request*) ; 
 scalar_t__ FUNC10 (struct crypto_aead*) ; 
 void* FUNC11 (struct crypto_aead*,int) ; 
 struct scatterlist* FUNC12 (struct crypto_aead*,struct aead_givcrypt_request*) ; 
 int /*<<< orphan*/  esp_output_done ; 
 struct aead_givcrypt_request* FUNC13 (struct crypto_aead*,int*) ; 
 int* FUNC14 (struct crypto_aead*,void*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 struct ip_esp_hdr* FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (void*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct scatterlist*,struct ip_esp_hdr*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct scatterlist*,int) ; 
 int FUNC21 (struct sk_buff*,int,struct sk_buff**) ; 
 int* FUNC22 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC24 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int* FUNC25 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC26 (struct sk_buff*,struct scatterlist*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC27(struct xfrm_state *x, struct sk_buff *skb)
{
	int err;
	struct ip_esp_hdr *esph;
	struct crypto_aead *aead;
	struct aead_givcrypt_request *req;
	struct scatterlist *sg;
	struct scatterlist *asg;
	struct sk_buff *trailer;
	void *tmp;
	int blksize;
	int clen;
	int alen;
	int nfrags;
	u8 *iv;
	u8 *tail;
	struct esp_data *esp = x->data;

	/* skb is pure payload to encrypt */
	err = -ENOMEM;

	/* Round to block size */
	clen = skb->len;

	aead = esp->aead;
	alen = FUNC7(aead);

	blksize = FUNC0(FUNC8(aead), 4);
	clen = FUNC0(clen + 2, blksize);
	if (esp->padlen)
		clen = FUNC0(clen, esp->padlen);

	if ((err = FUNC21(skb, clen - skb->len + alen, &trailer)) < 0)
		goto error;
	nfrags = err;

	tmp = FUNC11(aead, nfrags + 1);
	if (!tmp)
		goto error;

	iv = FUNC14(aead, tmp);
	req = FUNC13(aead, iv);
	asg = FUNC12(aead, req);
	sg = asg + 1;

	/* Fill padding... */
	tail = FUNC25(trailer);
	do {
		int i;
		for (i=0; i<clen-skb->len - 2; i++)
			tail[i] = i + 1;
	} while (0);
	tail[clen-skb->len - 2] = (clen - skb->len) - 2;
	tail[clen - skb->len - 1] = *FUNC22(skb);
	FUNC18(skb, trailer, clen - skb->len + alen);

	FUNC24(skb, -FUNC23(skb));
	esph = FUNC16(skb);
	*FUNC22(skb) = IPPROTO_ESP;

	esph->spi = x->id.spi;
	esph->seq_no = FUNC15(FUNC2(skb)->seq.output);

	FUNC20(sg, nfrags);
	FUNC26(skb, sg,
		     esph->enc_data + FUNC10(aead) - skb->data,
		     clen + alen);
	FUNC19(asg, esph, sizeof(*esph));

	FUNC4(req, 0, esp_output_done, skb);
	FUNC5(req, sg, sg, clen, iv);
	FUNC3(req, asg, sizeof(*esph));
	FUNC6(req, esph->enc_data,
			      FUNC2(skb)->seq.output);

	FUNC1(skb)->tmp = tmp;
	err = FUNC9(req);
	if (err == -EINPROGRESS)
		goto error;

	if (err == -EBUSY)
		err = NET_XMIT_DROP;

	FUNC17(tmp);

error:
	return err;
}