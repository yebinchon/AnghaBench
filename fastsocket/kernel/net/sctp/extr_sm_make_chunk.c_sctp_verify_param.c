
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union sctp_params {TYPE_1__* p; } ;
struct sctp_hmac_algo_param {int* hmac_ids; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef int sctp_paramhdr_t ;
typedef int sctp_ierror_t ;
typedef int sctp_cid_t ;
typedef int __u16 ;
struct TYPE_2__ {int type; int length; } ;


 int SCTP_AUTH_HMAC_ID_SHA1 ;
 int SCTP_AUTH_RANDOM_LENGTH ;
 int SCTP_DEBUG_PRINTK (char*,int,int ) ;
 int SCTP_IERROR_ABORT ;
 int SCTP_IERROR_NO_ERROR ;
 int ntohs (int) ;
 int sctp_addip_enable ;
 int sctp_auth_enable ;
 int sctp_process_hn_param (struct sctp_association const*,union sctp_params,struct sctp_chunk*,struct sctp_chunk**) ;
 int sctp_process_inv_paramlength (struct sctp_association const*,TYPE_1__*,struct sctp_chunk*,struct sctp_chunk**) ;
 int sctp_process_unk_param (struct sctp_association const*,union sctp_params,struct sctp_chunk*,struct sctp_chunk**) ;
 int sctp_prsctp_enable ;
 int sctp_verify_ext_param (union sctp_params) ;

__attribute__((used)) static sctp_ierror_t sctp_verify_param(const struct sctp_association *asoc,
     union sctp_params param,
     sctp_cid_t cid,
     struct sctp_chunk *chunk,
     struct sctp_chunk **err_chunk)
{
 struct sctp_hmac_algo_param *hmacs;
 int retval = SCTP_IERROR_NO_ERROR;
 __u16 n_elt, id = 0;
 int i;






 switch (param.p->type) {
 case 135:
 case 134:
 case 141:
 case 130:
 case 131:
 case 138:
 case 128:
 case 140:
 case 143:
  break;

 case 129:
  if (!sctp_verify_ext_param(param))
   return SCTP_IERROR_ABORT;
  break;

 case 132:
  if (sctp_addip_enable)
   break;
  goto fallthrough;

 case 136:

  sctp_process_hn_param(asoc, param, chunk, err_chunk);
  retval = SCTP_IERROR_ABORT;
  break;

 case 139:
  if (sctp_prsctp_enable)
   break;
  goto fallthrough;

 case 133:
  if (!sctp_auth_enable)
   goto fallthrough;






  if (SCTP_AUTH_RANDOM_LENGTH !=
   ntohs(param.p->length) - sizeof(sctp_paramhdr_t)) {
   sctp_process_inv_paramlength(asoc, param.p,
       chunk, err_chunk);
   retval = SCTP_IERROR_ABORT;
  }
  break;

 case 142:
  if (!sctp_auth_enable)
   goto fallthrough;






  if (260 < ntohs(param.p->length)) {
   sctp_process_inv_paramlength(asoc, param.p,
           chunk, err_chunk);
   retval = SCTP_IERROR_ABORT;
  }
  break;

 case 137:
  if (!sctp_auth_enable)
   goto fallthrough;

  hmacs = (struct sctp_hmac_algo_param *)param.p;
  n_elt = (ntohs(param.p->length) - sizeof(sctp_paramhdr_t)) >> 1;





  for (i = 0; i < n_elt; i++) {
   id = ntohs(hmacs->hmac_ids[i]);

   if (id == SCTP_AUTH_HMAC_ID_SHA1)
    break;
  }

  if (id != SCTP_AUTH_HMAC_ID_SHA1) {
   sctp_process_inv_paramlength(asoc, param.p, chunk,
           err_chunk);
   retval = SCTP_IERROR_ABORT;
  }
  break;
fallthrough:
 default:
  SCTP_DEBUG_PRINTK("Unrecognized param: %d for chunk %d.\n",
    ntohs(param.p->type), cid);
  retval = sctp_process_unk_param(asoc, param, chunk, err_chunk);
  break;
 }
 return retval;
}
