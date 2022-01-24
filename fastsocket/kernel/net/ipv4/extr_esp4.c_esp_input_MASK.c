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
typedef  int /*<<< orphan*/  u8 ;
struct xfrm_state {struct esp_data* data; } ;
struct sk_buff {int len; scalar_t__ data; int /*<<< orphan*/  ip_summed; } ;
struct scatterlist {int dummy; } ;
struct ip_esp_hdr {int /*<<< orphan*/ * enc_data; } ;
struct esp_data {struct crypto_aead* aead; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int dummy; } ;
struct TYPE_2__ {void* tmp; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 int ENOMEM ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct aead_request*,struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct aead_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct aead_request*,struct scatterlist*,struct scatterlist*,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct aead_request*) ; 
 int FUNC5 (struct crypto_aead*) ; 
 void* FUNC6 (struct crypto_aead*,int) ; 
 int /*<<< orphan*/  esp_input_done ; 
 int FUNC7 (struct sk_buff*,int) ; 
 struct scatterlist* FUNC8 (struct crypto_aead*,struct aead_request*) ; 
 int /*<<< orphan*/ * FUNC9 (struct crypto_aead*,void*) ; 
 struct aead_request* FUNC10 (struct crypto_aead*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct scatterlist*,struct ip_esp_hdr*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct scatterlist*,int) ; 
 int FUNC14 (struct sk_buff*,int /*<<< orphan*/ ,struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,struct scatterlist*,int,int) ; 

__attribute__((used)) static int FUNC16(struct xfrm_state *x, struct sk_buff *skb)
{
	struct ip_esp_hdr *esph;
	struct esp_data *esp = x->data;
	struct crypto_aead *aead = esp->aead;
	struct aead_request *req;
	struct sk_buff *trailer;
	int elen = skb->len - sizeof(*esph) - FUNC5(aead);
	int nfrags;
	void *tmp;
	u8 *iv;
	struct scatterlist *sg;
	struct scatterlist *asg;
	int err = -EINVAL;

	if (!FUNC11(skb, sizeof(*esph) + FUNC5(aead)))
		goto out;

	if (elen <= 0)
		goto out;

	if ((err = FUNC14(skb, 0, &trailer)) < 0)
		goto out;
	nfrags = err;

	err = -ENOMEM;
	tmp = FUNC6(aead, nfrags + 1);
	if (!tmp)
		goto out;

	FUNC0(skb)->tmp = tmp;
	iv = FUNC9(aead, tmp);
	req = FUNC10(aead, iv);
	asg = FUNC8(aead, req);
	sg = asg + 1;

	skb->ip_summed = CHECKSUM_NONE;

	esph = (struct ip_esp_hdr *)skb->data;

	/* Get ivec. This can be wrong, check against another impls. */
	iv = esph->enc_data;

	FUNC13(sg, nfrags);
	FUNC15(skb, sg, sizeof(*esph) + FUNC5(aead), elen);
	FUNC12(asg, esph, sizeof(*esph));

	FUNC2(req, 0, esp_input_done, skb);
	FUNC3(req, sg, sg, elen, iv);
	FUNC1(req, asg, sizeof(*esph));

	err = FUNC4(req);
	if (err == -EINPROGRESS)
		goto out;

	err = FUNC7(skb, err);

out:
	return err;
}