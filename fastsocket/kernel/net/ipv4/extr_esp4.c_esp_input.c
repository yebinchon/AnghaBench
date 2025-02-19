
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct xfrm_state {struct esp_data* data; } ;
struct sk_buff {int len; scalar_t__ data; int ip_summed; } ;
struct scatterlist {int dummy; } ;
struct ip_esp_hdr {int * enc_data; } ;
struct esp_data {struct crypto_aead* aead; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int dummy; } ;
struct TYPE_2__ {void* tmp; } ;


 int CHECKSUM_NONE ;
 int EINPROGRESS ;
 int EINVAL ;
 int ENOMEM ;
 TYPE_1__* ESP_SKB_CB (struct sk_buff*) ;
 int aead_request_set_assoc (struct aead_request*,struct scatterlist*,int) ;
 int aead_request_set_callback (struct aead_request*,int ,int ,struct sk_buff*) ;
 int aead_request_set_crypt (struct aead_request*,struct scatterlist*,struct scatterlist*,int,int *) ;
 int crypto_aead_decrypt (struct aead_request*) ;
 int crypto_aead_ivsize (struct crypto_aead*) ;
 void* esp_alloc_tmp (struct crypto_aead*,int) ;
 int esp_input_done ;
 int esp_input_done2 (struct sk_buff*,int) ;
 struct scatterlist* esp_req_sg (struct crypto_aead*,struct aead_request*) ;
 int * esp_tmp_iv (struct crypto_aead*,void*) ;
 struct aead_request* esp_tmp_req (struct crypto_aead*,int *) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int sg_init_one (struct scatterlist*,struct ip_esp_hdr*,int) ;
 int sg_init_table (struct scatterlist*,int) ;
 int skb_cow_data (struct sk_buff*,int ,struct sk_buff**) ;
 int skb_to_sgvec (struct sk_buff*,struct scatterlist*,int,int) ;

__attribute__((used)) static int esp_input(struct xfrm_state *x, struct sk_buff *skb)
{
 struct ip_esp_hdr *esph;
 struct esp_data *esp = x->data;
 struct crypto_aead *aead = esp->aead;
 struct aead_request *req;
 struct sk_buff *trailer;
 int elen = skb->len - sizeof(*esph) - crypto_aead_ivsize(aead);
 int nfrags;
 void *tmp;
 u8 *iv;
 struct scatterlist *sg;
 struct scatterlist *asg;
 int err = -EINVAL;

 if (!pskb_may_pull(skb, sizeof(*esph) + crypto_aead_ivsize(aead)))
  goto out;

 if (elen <= 0)
  goto out;

 if ((err = skb_cow_data(skb, 0, &trailer)) < 0)
  goto out;
 nfrags = err;

 err = -ENOMEM;
 tmp = esp_alloc_tmp(aead, nfrags + 1);
 if (!tmp)
  goto out;

 ESP_SKB_CB(skb)->tmp = tmp;
 iv = esp_tmp_iv(aead, tmp);
 req = esp_tmp_req(aead, iv);
 asg = esp_req_sg(aead, req);
 sg = asg + 1;

 skb->ip_summed = CHECKSUM_NONE;

 esph = (struct ip_esp_hdr *)skb->data;


 iv = esph->enc_data;

 sg_init_table(sg, nfrags);
 skb_to_sgvec(skb, sg, sizeof(*esph) + crypto_aead_ivsize(aead), elen);
 sg_init_one(asg, esph, sizeof(*esph));

 aead_request_set_callback(req, 0, esp_input_done, skb);
 aead_request_set_crypt(req, sg, sg, elen, iv);
 aead_request_set_assoc(req, asg, sizeof(*esph));

 err = crypto_aead_decrypt(req);
 if (err == -EINPROGRESS)
  goto out;

 err = esp_input_done2(skb, err);

out:
 return err;
}
