
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_shared_key {int dummy; } ;
struct sctp_auth_bytes {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef int gfp_t ;


 int kfree (struct sctp_auth_bytes*) ;
 struct sctp_auth_bytes* sctp_auth_asoc_set_secret (struct sctp_shared_key*,struct sctp_auth_bytes*,struct sctp_auth_bytes*,int ) ;
 int sctp_auth_compare_vectors (struct sctp_auth_bytes*,struct sctp_auth_bytes*) ;
 struct sctp_auth_bytes* sctp_auth_make_local_vector (struct sctp_association const*,int ) ;
 struct sctp_auth_bytes* sctp_auth_make_peer_vector (struct sctp_association const*,int ) ;

__attribute__((used)) static struct sctp_auth_bytes *sctp_auth_asoc_create_secret(
     const struct sctp_association *asoc,
     struct sctp_shared_key *ep_key,
     gfp_t gfp)
{
 struct sctp_auth_bytes *local_key_vector;
 struct sctp_auth_bytes *peer_key_vector;
 struct sctp_auth_bytes *first_vector,
    *last_vector;
 struct sctp_auth_bytes *secret = ((void*)0);
 int cmp;
 local_key_vector = sctp_auth_make_local_vector(asoc, gfp);
 peer_key_vector = sctp_auth_make_peer_vector(asoc, gfp);

 if (!peer_key_vector || !local_key_vector)
  goto out;
 cmp = sctp_auth_compare_vectors(local_key_vector,
     peer_key_vector);
 if (cmp < 0) {
  first_vector = local_key_vector;
  last_vector = peer_key_vector;
 } else {
  first_vector = peer_key_vector;
  last_vector = local_key_vector;
 }

 secret = sctp_auth_asoc_set_secret(ep_key, first_vector, last_vector,
         gfp);
out:
 kfree(local_key_vector);
 kfree(peer_key_vector);

 return secret;
}
