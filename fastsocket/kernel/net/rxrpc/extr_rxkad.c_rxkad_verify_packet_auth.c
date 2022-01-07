
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sk_buff {int len; } ;
struct scatterlist {int dummy; } ;
struct TYPE_4__ {int seq; int callNumber; } ;
struct rxrpc_skb_priv {TYPE_2__ hdr; } ;
struct rxrpc_crypt {int x; } ;
struct rxrpc_call {TYPE_1__* conn; } ;
struct rxkad_level1_hdr {int data_size; } ;
struct blkcipher_desc {scalar_t__ flags; int info; int tfm; } ;
typedef int sechdr ;
typedef int iv ;
struct TYPE_3__ {int cipher; } ;


 int BUG () ;
 int ENOMEM ;
 int EPROTO ;
 int RXKADDATALEN ;
 int RXKADSEALEDINCON ;
 int _enter (char*) ;
 int _leave (char*,...) ;
 int crypto_blkcipher_decrypt_iv (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,int) ;
 int memset (struct rxrpc_crypt*,int ,int) ;
 int ntohl (int) ;
 struct rxrpc_skb_priv* rxrpc_skb (struct sk_buff*) ;
 int sg_init_table (struct scatterlist*,int) ;
 scalar_t__ skb_copy_bits (struct sk_buff*,int ,struct rxkad_level1_hdr*,int) ;
 int skb_cow_data (struct sk_buff*,int ,struct sk_buff**) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_to_sgvec (struct sk_buff*,struct scatterlist*,int ,int) ;

__attribute__((used)) static int rxkad_verify_packet_auth(const struct rxrpc_call *call,
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

 _enter("");

 sp = rxrpc_skb(skb);


 nsg = skb_cow_data(skb, 0, &trailer);
 if (nsg < 0 || nsg > 16)
  goto nomem;

 sg_init_table(sg, nsg);
 skb_to_sgvec(skb, sg, 0, 8);


 memset(&iv, 0, sizeof(iv));
 desc.tfm = call->conn->cipher;
 desc.info = iv.x;
 desc.flags = 0;

 crypto_blkcipher_decrypt_iv(&desc, sg, sg, 8);


 if (skb_copy_bits(skb, 0, &sechdr, sizeof(sechdr)) < 0)
  goto datalen_error;
 if (!skb_pull(skb, sizeof(sechdr)))
  BUG();

 buf = ntohl(sechdr.data_size);
 data_size = buf & 0xffff;

 check = buf >> 16;
 check ^= ntohl(sp->hdr.seq ^ sp->hdr.callNumber);
 check &= 0xffff;
 if (check != 0) {
  *_abort_code = RXKADSEALEDINCON;
  goto protocol_error;
 }


 if (data_size > skb->len)
  goto datalen_error;
 else if (data_size < skb->len)
  skb->len = data_size;

 _leave(" = 0 [dlen=%x]", data_size);
 return 0;

datalen_error:
 *_abort_code = RXKADDATALEN;
protocol_error:
 _leave(" = -EPROTO");
 return -EPROTO;

nomem:
 _leave(" = -ENOMEM");
 return -ENOMEM;
}
