
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_write_space; int sk_data_ready; } ;
struct sctp_shared_key {int key_list; } ;
struct TYPE_3__ {void* length; int type; } ;
struct sctp_hmac_algo_param {TYPE_1__ param_hdr; int * chunks; void** hmac_ids; } ;
struct TYPE_4__ {int malloced; struct sock* sk; int bind_addr; int inqueue; scalar_t__ dead; int refcnt; int type; } ;
struct sctp_endpoint {struct sctp_hmac_algo_param* digest; int endpoint_shared_keys; struct sctp_hmac_algo_param* auth_chunk_list; struct sctp_hmac_algo_param* auth_hmacs_list; int key_changed_at; scalar_t__ current_key; scalar_t__ last_key; int * secret_key; int rcvbuf_policy; int sndbuf_policy; int asocs; TYPE_2__ base; } ;
struct sctp_chunks_param {TYPE_1__ param_hdr; int * chunks; void** hmac_ids; } ;
typedef int sctp_paramhdr_t ;
typedef int sctp_hmac_algo_param_t ;
typedef int sctp_chunks_param_t ;
typedef int gfp_t ;
typedef int __u16 ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int SCTP_AUTH_HMAC_ID_SHA1 ;
 int SCTP_AUTH_NUM_HMACS ;
 int SCTP_CID_ASCONF ;
 int SCTP_CID_ASCONF_ACK ;
 int SCTP_EP_TYPE_SOCKET ;
 int SCTP_NUM_CHUNK_TYPES ;
 int SCTP_PARAM_CHUNKS ;
 int SCTP_PARAM_HMAC_ALGO ;
 int SCTP_SECRET_SIZE ;
 int SCTP_SIGNATURE_SIZE ;
 int SOCK_USE_WRITE_QUEUE ;
 int atomic_set (int *,int) ;
 int get_random_bytes (int *,int ) ;
 void* htons (int) ;
 int jiffies ;
 int kfree (struct sctp_hmac_algo_param*) ;
 void* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 scalar_t__ sctp_addip_enable ;
 int sctp_auth_destroy_keys (int *) ;
 scalar_t__ sctp_auth_enable ;
 int sctp_auth_init_hmacs (struct sctp_endpoint*,int ) ;
 struct sctp_shared_key* sctp_auth_shkey_create (int ,int ) ;
 int sctp_bind_addr_init (int *,int ) ;
 int sctp_data_ready ;
 int sctp_endpoint_bh_rcv ;
 int sctp_inq_init (int *) ;
 int sctp_inq_set_th_handler (int *,int ) ;
 int sctp_rcvbuf_policy ;
 int sctp_sndbuf_policy ;
 int sctp_write_space ;
 int sock_hold (struct sock*) ;
 int sock_set_flag (struct sock*,int ) ;

__attribute__((used)) static struct sctp_endpoint *sctp_endpoint_init(struct sctp_endpoint *ep,
      struct sock *sk,
      gfp_t gfp)
{
 struct sctp_hmac_algo_param *auth_hmacs = ((void*)0);
 struct sctp_chunks_param *auth_chunks = ((void*)0);
 struct sctp_shared_key *null_key;
 int err;

 ep->digest = kzalloc(SCTP_SIGNATURE_SIZE, gfp);
 if (!ep->digest)
  return ((void*)0);

 if (sctp_auth_enable) {




  auth_hmacs = kzalloc(sizeof(sctp_hmac_algo_param_t) +
    sizeof(__u16) * SCTP_AUTH_NUM_HMACS, gfp);
  if (!auth_hmacs)
   goto nomem;

  auth_chunks = kzalloc(sizeof(sctp_chunks_param_t) +
     SCTP_NUM_CHUNK_TYPES, gfp);
  if (!auth_chunks)
   goto nomem;






  auth_hmacs->param_hdr.type = SCTP_PARAM_HMAC_ALGO;
  auth_hmacs->param_hdr.length =
     htons(sizeof(sctp_paramhdr_t) + 2);
  auth_hmacs->hmac_ids[0] = htons(SCTP_AUTH_HMAC_ID_SHA1);


  auth_chunks->param_hdr.type = SCTP_PARAM_CHUNKS;
  auth_chunks->param_hdr.length = htons(sizeof(sctp_paramhdr_t));




  if (sctp_addip_enable) {
   auth_chunks->chunks[0] = SCTP_CID_ASCONF;
   auth_chunks->chunks[1] = SCTP_CID_ASCONF_ACK;
   auth_chunks->param_hdr.length =
     htons(sizeof(sctp_paramhdr_t) + 2);
  }
 }



 ep->base.type = SCTP_EP_TYPE_SOCKET;


 atomic_set(&ep->base.refcnt, 1);
 ep->base.dead = 0;
 ep->base.malloced = 1;


 sctp_inq_init(&ep->base.inqueue);


 sctp_inq_set_th_handler(&ep->base.inqueue, sctp_endpoint_bh_rcv);


 sctp_bind_addr_init(&ep->base.bind_addr, 0);


 ep->base.sk = sk;
 sock_hold(ep->base.sk);


 INIT_LIST_HEAD(&ep->asocs);


 ep->sndbuf_policy = sctp_sndbuf_policy;

 sk->sk_data_ready = sctp_data_ready;
 sk->sk_write_space = sctp_write_space;
 sock_set_flag(sk, SOCK_USE_WRITE_QUEUE);


 ep->rcvbuf_policy = sctp_rcvbuf_policy;


 get_random_bytes(&ep->secret_key[0], SCTP_SECRET_SIZE);
 ep->last_key = ep->current_key = 0;
 ep->key_changed_at = jiffies;


 INIT_LIST_HEAD(&ep->endpoint_shared_keys);
 null_key = sctp_auth_shkey_create(0, GFP_KERNEL);
 if (!null_key)
  goto nomem;

 list_add(&null_key->key_list, &ep->endpoint_shared_keys);


 err = sctp_auth_init_hmacs(ep, gfp);
 if (err)
  goto nomem_hmacs;




 ep->auth_hmacs_list = auth_hmacs;
 ep->auth_chunk_list = auth_chunks;

 return ep;

nomem_hmacs:
 sctp_auth_destroy_keys(&ep->endpoint_shared_keys);
nomem:

 kfree(auth_hmacs);
 kfree(auth_chunks);
 kfree(ep->digest);
 return ((void*)0);

}
