
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int length; } ;
struct sctp_hmac_algo_param {int hmac_ids; TYPE_2__ param_hdr; } ;
struct TYPE_3__ {scalar_t__ auth_hmacs; } ;
struct sctp_association {TYPE_1__ c; } ;
typedef int sctp_paramhdr_t ;
typedef int __u16 ;
typedef int __be16 ;


 int __sctp_auth_find_hmacid (int ,int,int ) ;
 int ntohs (int ) ;

int sctp_auth_asoc_verify_hmac_id(const struct sctp_association *asoc,
        __be16 hmac_id)
{
 struct sctp_hmac_algo_param *hmacs;
 __u16 n_elt;

 if (!asoc)
  return 0;

 hmacs = (struct sctp_hmac_algo_param *)asoc->c.auth_hmacs;
 n_elt = (ntohs(hmacs->param_hdr.length) - sizeof(sctp_paramhdr_t)) >> 1;

 return __sctp_auth_find_hmacid(hmacs->hmac_ids, n_elt, hmac_id);
}
