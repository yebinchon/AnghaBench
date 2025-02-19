
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_19__ {int raw_addr_list_len; TYPE_5__* peer_init; int expiration; int adaptation_ind; int prsctp_capable; } ;
struct sctp_signed_cookie {int signature; TYPE_6__ c; } ;
struct TYPE_16__ {int sk; } ;
struct sctp_endpoint {size_t current_key; TYPE_3__ base; scalar_t__* secret_key; } ;
struct sctp_cookie {int dummy; } ;
struct sctp_chunk {TYPE_5__ const* chunk_hdr; } ;
struct TYPE_15__ {int adaptation_ind; int prsctp_capable; } ;
struct sctp_association {int cookie_life; TYPE_2__ peer; TYPE_6__ c; } ;
struct scatterlist {int dummy; } ;
struct hash_desc {scalar_t__ tfm; scalar_t__ flags; } ;
typedef int sctp_paramhdr_t ;
struct TYPE_14__ {int length; int type; } ;
struct TYPE_17__ {TYPE_1__ p; scalar_t__ body; } ;
typedef TYPE_4__ sctp_cookie_param_t ;
struct TYPE_18__ {int length; } ;
typedef TYPE_5__ __u8 ;
struct TYPE_20__ {scalar_t__ hmac; } ;


 int GFP_ATOMIC ;
 int SCTP_COOKIE_MULTIPLE ;
 int SCTP_PARAM_STATE_COOKIE ;
 unsigned int SCTP_SECRET_SIZE ;
 int TIMEVAL_ADD (int ,int ) ;
 scalar_t__ crypto_hash_digest (struct hash_desc*,struct scatterlist*,int,int ) ;
 scalar_t__ crypto_hash_setkey (scalar_t__,char*,unsigned int) ;
 int do_gettimeofday (int *) ;
 int htons (int) ;
 int kfree (TYPE_4__*) ;
 TYPE_4__* kzalloc (int,int ) ;
 int memcpy (TYPE_5__*,TYPE_5__ const*,int) ;
 int ntohs (int ) ;
 TYPE_7__* sctp_sk (int ) ;
 int sg_init_one (struct scatterlist*,TYPE_6__*,int) ;

__attribute__((used)) static sctp_cookie_param_t *sctp_pack_cookie(const struct sctp_endpoint *ep,
          const struct sctp_association *asoc,
          const struct sctp_chunk *init_chunk,
          int *cookie_len,
          const __u8 *raw_addrs, int addrs_len)
{
 sctp_cookie_param_t *retval;
 struct sctp_signed_cookie *cookie;
 struct scatterlist sg;
 int headersize, bodysize;
 unsigned int keylen;
 char *key;




 headersize = sizeof(sctp_paramhdr_t) +
       (sizeof(struct sctp_signed_cookie) -
        sizeof(struct sctp_cookie));
 bodysize = sizeof(struct sctp_cookie)
  + ntohs(init_chunk->chunk_hdr->length) + addrs_len;




 if (bodysize % SCTP_COOKIE_MULTIPLE)
  bodysize += SCTP_COOKIE_MULTIPLE
   - (bodysize % SCTP_COOKIE_MULTIPLE);
 *cookie_len = headersize + bodysize;




 retval = kzalloc(*cookie_len, GFP_ATOMIC);
 if (!retval)
  goto nodata;

 cookie = (struct sctp_signed_cookie *) retval->body;


 retval->p.type = SCTP_PARAM_STATE_COOKIE;
 retval->p.length = htons(*cookie_len);


 cookie->c = asoc->c;

 cookie->c.raw_addr_list_len = addrs_len;


 cookie->c.prsctp_capable = asoc->peer.prsctp_capable;


 cookie->c.adaptation_ind = asoc->peer.adaptation_ind;


 do_gettimeofday(&cookie->c.expiration);
 TIMEVAL_ADD(asoc->cookie_life, cookie->c.expiration);


 memcpy(&cookie->c.peer_init[0], init_chunk->chunk_hdr,
        ntohs(init_chunk->chunk_hdr->length));


 memcpy((__u8 *)&cookie->c.peer_init[0] +
        ntohs(init_chunk->chunk_hdr->length), raw_addrs, addrs_len);

 if (sctp_sk(ep->base.sk)->hmac) {
  struct hash_desc desc;


  sg_init_one(&sg, &cookie->c, bodysize);
  keylen = SCTP_SECRET_SIZE;
  key = (char *)ep->secret_key[ep->current_key];
  desc.tfm = sctp_sk(ep->base.sk)->hmac;
  desc.flags = 0;

  if (crypto_hash_setkey(desc.tfm, key, keylen) ||
      crypto_hash_digest(&desc, &sg, bodysize, cookie->signature))
   goto free_cookie;
 }

 return retval;

free_cookie:
 kfree(retval);
nodata:
 *cookie_len = 0;
 return ((void*)0);
}
