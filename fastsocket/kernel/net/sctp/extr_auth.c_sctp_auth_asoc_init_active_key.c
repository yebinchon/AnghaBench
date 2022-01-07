
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_shared_key {int dummy; } ;
struct sctp_auth_bytes {int dummy; } ;
struct TYPE_2__ {int auth_capable; } ;
struct sctp_association {struct sctp_auth_bytes* asoc_shared_key; int active_key_id; TYPE_1__ peer; } ;
typedef int gfp_t ;


 int BUG_ON (int) ;
 int ENOMEM ;
 struct sctp_auth_bytes* sctp_auth_asoc_create_secret (struct sctp_association*,struct sctp_shared_key*,int ) ;
 int sctp_auth_enable ;
 struct sctp_shared_key* sctp_auth_get_shkey (struct sctp_association*,int ) ;
 int sctp_auth_key_put (struct sctp_auth_bytes*) ;

int sctp_auth_asoc_init_active_key(struct sctp_association *asoc, gfp_t gfp)
{
 struct sctp_auth_bytes *secret;
 struct sctp_shared_key *ep_key;




 if (!sctp_auth_enable || !asoc->peer.auth_capable)
  return 0;






 ep_key = sctp_auth_get_shkey(asoc, asoc->active_key_id);
 BUG_ON(!ep_key);

 secret = sctp_auth_asoc_create_secret(asoc, ep_key, gfp);
 if (!secret)
  return -ENOMEM;

 sctp_auth_key_put(asoc->asoc_shared_key);
 asoc->asoc_shared_key = secret;

 return 0;
}
