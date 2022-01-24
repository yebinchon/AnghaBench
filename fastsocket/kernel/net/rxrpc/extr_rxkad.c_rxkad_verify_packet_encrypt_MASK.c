#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct sk_buff {int len; } ;
struct scatterlist {int dummy; } ;
struct TYPE_10__ {int seq; int callNumber; } ;
struct rxrpc_skb_priv {TYPE_5__ hdr; } ;
struct rxrpc_key_token {TYPE_3__* kad; } ;
struct rxrpc_crypt {int /*<<< orphan*/  x; } ;
struct rxrpc_call {TYPE_4__* conn; } ;
struct rxkad_level2_hdr {int data_size; } ;
struct blkcipher_desc {scalar_t__ flags; int /*<<< orphan*/  info; int /*<<< orphan*/  tfm; } ;
typedef  int /*<<< orphan*/  sechdr ;
typedef  int /*<<< orphan*/  iv ;
struct TYPE_9__ {int /*<<< orphan*/  cipher; TYPE_2__* key; } ;
struct TYPE_8__ {int /*<<< orphan*/  session_key; } ;
struct TYPE_6__ {struct rxrpc_key_token* data; } ;
struct TYPE_7__ {TYPE_1__ payload; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENOMEM ; 
 int EPROTO ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int RXKADDATALEN ; 
 int RXKADSEALEDINCON ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*) ; 
 struct scatterlist* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rxrpc_crypt*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int) ; 
 struct rxrpc_skb_priv* FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct scatterlist*,int) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,struct rxkad_level2_hdr*,int) ; 
 int FUNC11 (struct sk_buff*,int /*<<< orphan*/ ,struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,struct scatterlist*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static int FUNC15(const struct rxrpc_call *call,
				       struct sk_buff *skb,
				       u32 *_abort_code)
{
	const struct rxrpc_key_token *token;
	struct rxkad_level2_hdr sechdr;
	struct rxrpc_skb_priv *sp;
	struct blkcipher_desc desc;
	struct rxrpc_crypt iv;
	struct scatterlist _sg[4], *sg;
	struct sk_buff *trailer;
	u32 data_size, buf;
	u16 check;
	int nsg;

	FUNC1(",{%d}", skb->len);

	sp = FUNC8(skb);

	/* we want to decrypt the skbuff in-place */
	nsg = FUNC11(skb, 0, &trailer);
	if (nsg < 0)
		goto nomem;

	sg = _sg;
	if (FUNC14(nsg > 4)) {
		sg = FUNC5(sizeof(*sg) * nsg, GFP_NOIO);
		if (!sg)
			goto nomem;
	}

	FUNC9(sg, nsg);
	FUNC13(skb, sg, 0, skb->len);

	/* decrypt from the session key */
	token = call->conn->key->payload.data;
	FUNC6(&iv, token->kad->session_key, sizeof(iv));
	desc.tfm = call->conn->cipher;
	desc.info = iv.x;
	desc.flags = 0;

	FUNC3(&desc, sg, sg, skb->len);
	if (sg != _sg)
		FUNC4(sg);

	/* remove the decrypted packet length */
	if (FUNC10(skb, 0, &sechdr, sizeof(sechdr)) < 0)
		goto datalen_error;
	if (!FUNC12(skb, sizeof(sechdr)))
		FUNC0();

	buf = FUNC7(sechdr.data_size);
	data_size = buf & 0xffff;

	check = buf >> 16;
	check ^= FUNC7(sp->hdr.seq ^ sp->hdr.callNumber);
	check &= 0xffff;
	if (check != 0) {
		*_abort_code = RXKADSEALEDINCON;
		goto protocol_error;
	}

	/* shorten the packet to remove the padding */
	if (data_size > skb->len)
		goto datalen_error;
	else if (data_size < skb->len)
		skb->len = data_size;

	FUNC2(" = 0 [dlen=%x]", data_size);
	return 0;

datalen_error:
	*_abort_code = RXKADDATALEN;
protocol_error:
	FUNC2(" = -EPROTO");
	return -EPROTO;

nomem:
	FUNC2(" = -ENOMEM");
	return -ENOMEM;
}