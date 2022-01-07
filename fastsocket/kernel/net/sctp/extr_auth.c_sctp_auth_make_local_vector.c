
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_auth_bytes {int dummy; } ;
struct TYPE_2__ {scalar_t__ auth_hmacs; scalar_t__ auth_chunks; scalar_t__ auth_random; } ;
struct sctp_association {TYPE_1__ c; } ;
typedef int sctp_random_param_t ;
typedef int sctp_hmac_algo_param_t ;
typedef int sctp_chunks_param_t ;
typedef int gfp_t ;


 struct sctp_auth_bytes* sctp_auth_make_key_vector (int *,int *,int *,int ) ;

__attribute__((used)) static struct sctp_auth_bytes *sctp_auth_make_local_vector(
        const struct sctp_association *asoc,
        gfp_t gfp)
{
 return sctp_auth_make_key_vector(
        (sctp_random_param_t*)asoc->c.auth_random,
        (sctp_chunks_param_t*)asoc->c.auth_chunks,
        (sctp_hmac_algo_param_t*)asoc->c.auth_hmacs,
        gfp);
}
