
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; } ;
struct sctp_hmac_algo_param {int * hmac_ids; TYPE_1__ param_hdr; } ;
struct sctp_endpoint {scalar_t__* auth_hmacs; } ;
struct sctp_association {int default_hmac_id; struct sctp_endpoint* ep; } ;
typedef int sctp_paramhdr_t ;
typedef size_t __u16 ;


 size_t SCTP_AUTH_HMAC_ID_MAX ;
 size_t ntohs (int ) ;

void sctp_auth_asoc_set_default_hmac(struct sctp_association *asoc,
         struct sctp_hmac_algo_param *hmacs)
{
 struct sctp_endpoint *ep;
 __u16 id;
 int i;
 int n_params;


 if (asoc->default_hmac_id)
  return;

 n_params = (ntohs(hmacs->param_hdr.length)
    - sizeof(sctp_paramhdr_t)) >> 1;
 ep = asoc->ep;
 for (i = 0; i < n_params; i++) {
  id = ntohs(hmacs->hmac_ids[i]);


  if (id > SCTP_AUTH_HMAC_ID_MAX)
   continue;


  if (ep->auth_hmacs[id]) {
   asoc->default_hmac_id = id;
   break;
  }
 }
}
