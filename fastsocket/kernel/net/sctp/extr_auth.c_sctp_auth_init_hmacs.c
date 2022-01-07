
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_endpoint {struct crypto_hash** auth_hmacs; } ;
struct crypto_hash {int dummy; } ;
typedef int gfp_t ;
typedef int __u16 ;
struct TYPE_2__ {int hmac_name; } ;


 int CRYPTO_ALG_ASYNC ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct crypto_hash*) ;
 int SCTP_AUTH_NUM_HMACS ;
 struct crypto_hash* crypto_alloc_hash (int ,int ,int ) ;
 struct crypto_hash** kzalloc (int,int ) ;
 int sctp_auth_destroy_hmacs (struct crypto_hash**) ;
 int sctp_auth_enable ;
 TYPE_1__* sctp_hmac_list ;

int sctp_auth_init_hmacs(struct sctp_endpoint *ep, gfp_t gfp)
{
 struct crypto_hash *tfm = ((void*)0);
 __u16 id;


 if (!sctp_auth_enable) {
  ep->auth_hmacs = ((void*)0);
  return 0;
 }

 if (ep->auth_hmacs)
  return 0;


 ep->auth_hmacs = kzalloc(
       sizeof(struct crypto_hash *) * SCTP_AUTH_NUM_HMACS,
       gfp);
 if (!ep->auth_hmacs)
  return -ENOMEM;

 for (id = 0; id < SCTP_AUTH_NUM_HMACS; id++) {






  if (!sctp_hmac_list[id].hmac_name)
   continue;


  if (ep->auth_hmacs[id])
   continue;


  tfm = crypto_alloc_hash(sctp_hmac_list[id].hmac_name, 0,
     CRYPTO_ALG_ASYNC);
  if (IS_ERR(tfm))
   goto out_err;

  ep->auth_hmacs[id] = tfm;
 }

 return 0;

out_err:

 sctp_auth_destroy_hmacs(ep->auth_hmacs);
 return -ENOMEM;
}
