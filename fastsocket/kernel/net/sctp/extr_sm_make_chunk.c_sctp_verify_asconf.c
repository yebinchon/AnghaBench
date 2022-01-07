
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union sctp_params {void* v; struct sctp_paramhdr* p; } ;
struct sctp_paramhdr {int type; int length; } ;
struct sctp_association {int dummy; } ;
typedef void sctp_paramhdr_t ;
struct TYPE_3__ {int length; } ;
struct TYPE_4__ {TYPE_1__ param_hdr; } ;
typedef TYPE_2__ sctp_addip_param_t ;







 int WORD_ROUND (int) ;
 int ntohs (int ) ;

int sctp_verify_asconf(const struct sctp_association *asoc,
         struct sctp_paramhdr *param_hdr, void *chunk_end,
         struct sctp_paramhdr **errp) {
 sctp_addip_param_t *asconf_param;
 union sctp_params param;
 int length, plen;

 param.v = (sctp_paramhdr_t *) param_hdr;
 while (param.v <= chunk_end - sizeof(sctp_paramhdr_t)) {
  length = ntohs(param.p->length);
  *errp = param.p;

  if (param.v > chunk_end - length ||
      length < sizeof(sctp_paramhdr_t))
   return 0;

  switch (param.p->type) {
  case 131:
  case 130:
  case 129:
   asconf_param = (sctp_addip_param_t *)param.v;
   plen = ntohs(asconf_param->param_hdr.length);
   if (plen < sizeof(sctp_addip_param_t) +
       sizeof(sctp_paramhdr_t))
    return 0;
   break;
  case 128:
  case 132:
   if (length != sizeof(sctp_addip_param_t))
    return 0;

   break;
  default:
   break;
  }

  param.v += WORD_ROUND(length);
 }

 if (param.v != chunk_end)
  return 0;

 return 1;
}
