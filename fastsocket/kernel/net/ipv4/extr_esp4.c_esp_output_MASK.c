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
struct xfrm_state {TYPE_1__ id; int /*<<< orphan*/  lock; struct xfrm_encap_tmpl* encap; struct esp_data* data; } ;
struct xfrm_encap_tmpl {int encap_type; void* encap_dport; void* encap_sport; } ;
struct udphdr {scalar_t__ check; int /*<<< orphan*/  len; void* dest; void* source; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct scatterlist {int dummy; } ;
struct ip_esp_hdr {scalar_t__ enc_data; int /*<<< orphan*/  seq_no; int /*<<< orphan*/  spi; } ;
struct esp_data {int padlen; struct crypto_aead* aead; } ;
struct crypto_aead {int dummy; } ;
struct aead_givcrypt_request {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  void* __be16 ;
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
 int IPPROTO_UDP ; 
 int NET_XMIT_DROP ; 
#define  UDP_ENCAP_ESPINUDP 129 
#define  UDP_ENCAP_ESPINUDP_NON_IKE 128 
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
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 struct ip_esp_hdr* FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (void*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct scatterlist*,struct ip_esp_hdr*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct scatterlist*,int) ; 
 int FUNC22 (struct sk_buff*,int,struct sk_buff**) ; 
 int* FUNC23 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC24 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC25 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int* FUNC26 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC27 (struct sk_buff*,struct scatterlist*,scalar_t__,int) ; 
 scalar_t__ FUNC28 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC31(struct xfrm_state *x, struct sk_buff *skb)
{
	int err;
	struct ip_esp_hdr *esph;
	struct crypto_aead *aead;
	struct aead_givcrypt_request *req;
	struct scatterlist *sg;
	struct scatterlist *asg;
	struct esp_data *esp;
	struct sk_buff *trailer;
	void *tmp;
	u8 *iv;
	u8 *tail;
	int blksize;
	int clen;
	int alen;
	int nfrags;

	/* skb is pure payload to encrypt */

	err = -ENOMEM;

	/* Round to block size */
	clen = skb->len;

	esp = x->data;
	aead = esp->aead;
	alen = FUNC7(aead);

	blksize = FUNC0(FUNC8(aead), 4);
	clen = FUNC0(clen + 2, blksize);
	if (esp->padlen)
		clen = FUNC0(clen, esp->padlen);

	if ((err = FUNC22(skb, clen - skb->len + alen, &trailer)) < 0)
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
	tail = FUNC26(trailer);
	do {
		int i;
		for (i=0; i<clen-skb->len - 2; i++)
			tail[i] = i + 1;
	} while (0);
	tail[clen - skb->len - 2] = (clen - skb->len) - 2;
	tail[clen - skb->len - 1] = *FUNC23(skb);
	FUNC19(skb, trailer, clen - skb->len + alen);

	FUNC25(skb, -FUNC24(skb));
	esph = FUNC17(skb);
	*FUNC23(skb) = IPPROTO_ESP;

	/* this is non-NULL only with UDP Encapsulation */
	if (x->encap) {
		struct xfrm_encap_tmpl *encap = x->encap;
		struct udphdr *uh;
		__be32 *udpdata32;
		__be16 sport, dport;
		int encap_type;

		FUNC29(&x->lock);
		sport = encap->encap_sport;
		dport = encap->encap_dport;
		encap_type = encap->encap_type;
		FUNC30(&x->lock);

		uh = (struct udphdr *)esph;
		uh->source = sport;
		uh->dest = dport;
		uh->len = FUNC16(skb->len - FUNC28(skb));
		uh->check = 0;

		switch (encap_type) {
		default:
		case UDP_ENCAP_ESPINUDP:
			esph = (struct ip_esp_hdr *)(uh + 1);
			break;
		case UDP_ENCAP_ESPINUDP_NON_IKE:
			udpdata32 = (__be32 *)(uh + 1);
			udpdata32[0] = udpdata32[1] = 0;
			esph = (struct ip_esp_hdr *)(udpdata32 + 2);
			break;
		}

		*FUNC23(skb) = IPPROTO_UDP;
	}

	esph->spi = x->id.spi;
	esph->seq_no = FUNC15(FUNC2(skb)->seq.output);

	FUNC21(sg, nfrags);
	FUNC27(skb, sg,
		     esph->enc_data + FUNC10(aead) - skb->data,
		     clen + alen);
	FUNC20(asg, esph, sizeof(*esph));

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

	FUNC18(tmp);

error:
	return err;
}