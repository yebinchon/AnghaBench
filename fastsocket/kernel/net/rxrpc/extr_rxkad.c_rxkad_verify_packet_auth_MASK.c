#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct sk_buff {int len; } ;
struct scatterlist {int dummy; } ;
struct TYPE_4__ {int seq; int callNumber; } ;
struct rxrpc_skb_priv {TYPE_2__ hdr; } ;
struct rxrpc_crypt {int /*<<< orphan*/  x; } ;
struct rxrpc_call {TYPE_1__* conn; } ;
struct rxkad_level1_hdr {int data_size; } ;
struct blkcipher_desc {scalar_t__ flags; int /*<<< orphan*/  info; int /*<<< orphan*/  tfm; } ;
typedef  int /*<<< orphan*/  sechdr ;
typedef  int /*<<< orphan*/  iv ;
struct TYPE_3__ {int /*<<< orphan*/  cipher; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENOMEM ; 
 int EPROTO ; 
 int RXKADDATALEN ; 
 int RXKADSEALEDINCON ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rxrpc_crypt*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int) ; 
 struct rxrpc_skb_priv* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct scatterlist*,int) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,struct rxkad_level1_hdr*,int) ; 
 int FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,struct scatterlist*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC12(const struct rxrpc_call *call,
				    struct sk_buff *skb,
				    u32 *_abort_code)
{
	struct rxkad_level1_hdr sechdr;
	struct rxrpc_skb_priv *sp;
	struct blkcipher_desc desc;
	struct rxrpc_crypt iv;
	struct scatterlist sg[16];
	struct sk_buff *trailer;
	u32 data_size, buf;
	u16 check;
	int nsg;

	FUNC1("");

	sp = FUNC6(skb);

	/* we want to decrypt the skbuff in-place */
	nsg = FUNC9(skb, 0, &trailer);
	if (nsg < 0 || nsg > 16)
		goto nomem;

	FUNC7(sg, nsg);
	FUNC11(skb, sg, 0, 8);

	/* start the decryption afresh */
	FUNC4(&iv, 0, sizeof(iv));
	desc.tfm = call->conn->cipher;
	desc.info = iv.x;
	desc.flags = 0;

	FUNC3(&desc, sg, sg, 8);

	/* remove the decrypted packet length */
	if (FUNC8(skb, 0, &sechdr, sizeof(sechdr)) < 0)
		goto datalen_error;
	if (!FUNC10(skb, sizeof(sechdr)))
		FUNC0();

	buf = FUNC5(sechdr.data_size);
	data_size = buf & 0xffff;

	check = buf >> 16;
	check ^= FUNC5(sp->hdr.seq ^ sp->hdr.callNumber);
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