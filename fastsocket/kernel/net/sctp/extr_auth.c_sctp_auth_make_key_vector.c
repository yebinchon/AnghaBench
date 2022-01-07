
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct sctp_auth_bytes {scalar_t__ data; scalar_t__ len; } ;
struct TYPE_9__ {int length; } ;
struct TYPE_10__ {TYPE_1__ param_hdr; } ;
typedef TYPE_2__ sctp_random_param_t ;
typedef TYPE_2__ sctp_hmac_algo_param_t ;
typedef TYPE_2__ sctp_chunks_param_t ;
typedef int gfp_t ;
typedef scalar_t__ __u32 ;


 struct sctp_auth_bytes* kmalloc (scalar_t__,int ) ;
 int memcpy (scalar_t__,TYPE_2__*,scalar_t__) ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static struct sctp_auth_bytes *sctp_auth_make_key_vector(
   sctp_random_param_t *random,
   sctp_chunks_param_t *chunks,
   sctp_hmac_algo_param_t *hmacs,
   gfp_t gfp)
{
 struct sctp_auth_bytes *new;
 __u32 len;
 __u32 offset = 0;

 len = ntohs(random->param_hdr.length) + ntohs(hmacs->param_hdr.length);
        if (chunks)
  len += ntohs(chunks->param_hdr.length);

 new = kmalloc(sizeof(struct sctp_auth_bytes) + len, gfp);
 if (!new)
  return ((void*)0);

 new->len = len;

 memcpy(new->data, random, ntohs(random->param_hdr.length));
 offset += ntohs(random->param_hdr.length);

 if (chunks) {
  memcpy(new->data + offset, chunks,
   ntohs(chunks->param_hdr.length));
  offset += ntohs(chunks->param_hdr.length);
 }

 memcpy(new->data + offset, hmacs, ntohs(hmacs->param_hdr.length));

 return new;
}
