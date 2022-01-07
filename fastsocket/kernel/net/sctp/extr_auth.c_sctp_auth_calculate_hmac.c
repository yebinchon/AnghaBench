
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct sctp_shared_key {int dummy; } ;
struct TYPE_4__ {int * hmac; int hmac_id; int shkey_id; } ;
struct sctp_auth_chunk {TYPE_2__ auth_hdr; } ;
struct sctp_auth_bytes {int len; int * data; } ;
struct sctp_association {scalar_t__ active_key_id; TYPE_1__* ep; struct sctp_auth_bytes* asoc_shared_key; } ;
struct scatterlist {int length; } ;
struct hash_desc {int tfm; scalar_t__ flags; } ;
typedef int gfp_t ;
typedef int __u8 ;
typedef scalar_t__ __u16 ;
struct TYPE_3__ {int * auth_hmacs; } ;


 int crypto_hash_digest (struct hash_desc*,struct scatterlist*,int ,int *) ;
 scalar_t__ crypto_hash_setkey (int ,int *,int ) ;
 scalar_t__ ntohs (int ) ;
 struct sctp_auth_bytes* sctp_auth_asoc_create_secret (struct sctp_association const*,struct sctp_shared_key*,int ) ;
 struct sctp_shared_key* sctp_auth_get_shkey (struct sctp_association const*,scalar_t__) ;
 int sctp_auth_key_put (struct sctp_auth_bytes*) ;
 int sg_init_one (struct scatterlist*,struct sctp_auth_chunk*,int) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;

void sctp_auth_calculate_hmac(const struct sctp_association *asoc,
         struct sk_buff *skb,
         struct sctp_auth_chunk *auth,
         gfp_t gfp)
{
 struct scatterlist sg;
 struct hash_desc desc;
 struct sctp_auth_bytes *asoc_key;
 __u16 key_id, hmac_id;
 __u8 *digest;
 unsigned char *end;
 int free_key = 0;





 key_id = ntohs(auth->auth_hdr.shkey_id);
 hmac_id = ntohs(auth->auth_hdr.hmac_id);

 if (key_id == asoc->active_key_id)
  asoc_key = asoc->asoc_shared_key;
 else {
  struct sctp_shared_key *ep_key;

  ep_key = sctp_auth_get_shkey(asoc, key_id);
  if (!ep_key)
   return;

  asoc_key = sctp_auth_asoc_create_secret(asoc, ep_key, gfp);
  if (!asoc_key)
   return;

  free_key = 1;
 }


 end = skb_tail_pointer(skb);
 sg_init_one(&sg, auth, end - (unsigned char *)auth);

 desc.tfm = asoc->ep->auth_hmacs[hmac_id];
 desc.flags = 0;

 digest = auth->auth_hdr.hmac;
 if (crypto_hash_setkey(desc.tfm, &asoc_key->data[0], asoc_key->len))
  goto free;

 crypto_hash_digest(&desc, &sg, sg.length, digest);

free:
 if (free_key)
  sctp_auth_key_put(asoc_key);
}
