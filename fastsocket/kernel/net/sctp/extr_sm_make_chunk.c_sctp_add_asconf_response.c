
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sctp_chunk {int dummy; } ;
struct TYPE_6__ {void* length; scalar_t__ type; } ;
struct TYPE_7__ {void* length; scalar_t__ cause; int crr_id; TYPE_1__ param_hdr; } ;
typedef TYPE_2__ sctp_errhdr_t ;
typedef TYPE_2__ sctp_addip_param_t ;
typedef int err_param ;
typedef int ack_param ;
typedef int __be32 ;
typedef scalar_t__ __be16 ;


 scalar_t__ SCTP_ERROR_NO_ERROR ;
 scalar_t__ SCTP_PARAM_ERR_CAUSE ;
 scalar_t__ SCTP_PARAM_SUCCESS_REPORT ;
 void* htons (int) ;
 int ntohs (void*) ;
 int sctp_addto_chunk (struct sctp_chunk*,int,TYPE_2__*) ;

__attribute__((used)) static void sctp_add_asconf_response(struct sctp_chunk *chunk, __be32 crr_id,
         __be16 err_code, sctp_addip_param_t *asconf_param)
{
 sctp_addip_param_t ack_param;
 sctp_errhdr_t err_param;
 int asconf_param_len = 0;
 int err_param_len = 0;
 __be16 response_type;

 if (SCTP_ERROR_NO_ERROR == err_code) {
  response_type = SCTP_PARAM_SUCCESS_REPORT;
 } else {
  response_type = SCTP_PARAM_ERR_CAUSE;
  err_param_len = sizeof(err_param);
  if (asconf_param)
   asconf_param_len =
     ntohs(asconf_param->param_hdr.length);
 }


 ack_param.param_hdr.type = response_type;
 ack_param.param_hdr.length = htons(sizeof(ack_param) +
        err_param_len +
        asconf_param_len);
 ack_param.crr_id = crr_id;
 sctp_addto_chunk(chunk, sizeof(ack_param), &ack_param);

 if (SCTP_ERROR_NO_ERROR == err_code)
  return;


 err_param.cause = err_code;
 err_param.length = htons(err_param_len + asconf_param_len);
 sctp_addto_chunk(chunk, err_param_len, &err_param);


 if (asconf_param)
  sctp_addto_chunk(chunk, asconf_param_len, asconf_param);
}
