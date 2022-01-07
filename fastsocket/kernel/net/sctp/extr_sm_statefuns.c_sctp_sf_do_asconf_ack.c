
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sctp_paramhdr {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct TYPE_5__ {scalar_t__ addip_hdr; } ;
struct sctp_chunk {TYPE_2__ subh; scalar_t__ chunk_end; TYPE_1__* skb; int auth; } ;
struct sctp_association {scalar_t__ addip_serial; struct sctp_chunk* addip_last_asconf; } ;
typedef int sctp_subtype_t ;
typedef int sctp_paramhdr_t ;
typedef int sctp_errhdr_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;
struct TYPE_6__ {int serial; scalar_t__ params; } ;
typedef TYPE_3__ sctp_addiphdr_t ;
typedef int sctp_addip_chunk_t ;
typedef scalar_t__ __u32 ;
struct TYPE_4__ {scalar_t__ data; } ;


 scalar_t__ ADDIP_SERIAL_gte (scalar_t__,scalar_t__) ;
 int ECONNABORTED ;
 int SCTP_CHUNK (struct sctp_chunk*) ;
 int SCTP_CMD_ASSOC_FAILED ;
 int SCTP_CMD_DISCARD_PACKET ;
 int SCTP_CMD_REPLY ;
 int SCTP_CMD_REPORT_BAD_TAG ;
 int SCTP_CMD_SEND_NEXT_ASCONF ;
 int SCTP_CMD_SET_SK_ERR ;
 int SCTP_CMD_TIMER_STOP ;
 int SCTP_DEC_STATS (int ) ;
 int SCTP_DISPOSITION_ABORT ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_DISPOSITION_DISCARD ;
 int SCTP_ERROR (int ) ;
 int SCTP_ERROR_ASCONF_ACK ;
 int SCTP_ERROR_RSRC_LOW ;
 int SCTP_EVENT_TIMEOUT_T4_RTO ;
 int SCTP_INC_STATS (int ) ;
 int SCTP_MIB_ABORTEDS ;
 int SCTP_MIB_CURRESTAB ;
 int SCTP_NULL () ;
 int SCTP_PERR (int ) ;
 int SCTP_TO (int ) ;
 scalar_t__ ntohl (int ) ;
 int sctp_add_cmd_sf (int *,int ,int ) ;
 int sctp_addip_noauth ;
 int sctp_chunk_length_valid (struct sctp_chunk*,int) ;
 int sctp_init_cause (struct sctp_chunk*,int ,int ) ;
 struct sctp_chunk* sctp_make_abort (struct sctp_association const*,struct sctp_chunk*,int) ;
 int sctp_process_asconf_ack (struct sctp_association*,struct sctp_chunk*) ;
 int sctp_sf_discard_chunk (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 int sctp_sf_pdiscard (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 int sctp_sf_violation_chunklen (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 int sctp_sf_violation_paramlen (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,void*,int *) ;
 int sctp_verify_asconf (struct sctp_association const*,int *,void*,struct sctp_paramhdr**) ;
 int sctp_vtag_verify (struct sctp_chunk*,struct sctp_association const*) ;

sctp_disposition_t sctp_sf_do_asconf_ack(const struct sctp_endpoint *ep,
      const struct sctp_association *asoc,
      const sctp_subtype_t type, void *arg,
      sctp_cmd_seq_t *commands)
{
 struct sctp_chunk *asconf_ack = arg;
 struct sctp_chunk *last_asconf = asoc->addip_last_asconf;
 struct sctp_chunk *abort;
 struct sctp_paramhdr *err_param = ((void*)0);
 sctp_addiphdr_t *addip_hdr;
 __u32 sent_serial, rcvd_serial;

 if (!sctp_vtag_verify(asconf_ack, asoc)) {
  sctp_add_cmd_sf(commands, SCTP_CMD_REPORT_BAD_TAG,
    SCTP_NULL());
  return sctp_sf_pdiscard(ep, asoc, type, arg, commands);
 }







 if (!sctp_addip_noauth && !asconf_ack->auth)
  return sctp_sf_discard_chunk(ep, asoc, type, arg, commands);


 if (!sctp_chunk_length_valid(asconf_ack, sizeof(sctp_addip_chunk_t)))
  return sctp_sf_violation_chunklen(ep, asoc, type, arg,
        commands);

 addip_hdr = (sctp_addiphdr_t *)asconf_ack->skb->data;
 rcvd_serial = ntohl(addip_hdr->serial);


 if (!sctp_verify_asconf(asoc,
     (sctp_paramhdr_t *)addip_hdr->params,
     (void *)asconf_ack->chunk_end,
     &err_param))
  return sctp_sf_violation_paramlen(ep, asoc, type, arg,
      (void *)err_param, commands);

 if (last_asconf) {
  addip_hdr = (sctp_addiphdr_t *)last_asconf->subh.addip_hdr;
  sent_serial = ntohl(addip_hdr->serial);
 } else {
  sent_serial = asoc->addip_serial - 1;
 }







 if (ADDIP_SERIAL_gte(rcvd_serial, sent_serial + 1) &&
     !(asoc->addip_last_asconf)) {
  abort = sctp_make_abort(asoc, asconf_ack,
     sizeof(sctp_errhdr_t));
  if (abort) {
   sctp_init_cause(abort, SCTP_ERROR_ASCONF_ACK, 0);
   sctp_add_cmd_sf(commands, SCTP_CMD_REPLY,
     SCTP_CHUNK(abort));
  }



  sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_STOP,
    SCTP_TO(SCTP_EVENT_TIMEOUT_T4_RTO));
  sctp_add_cmd_sf(commands, SCTP_CMD_DISCARD_PACKET,SCTP_NULL());
  sctp_add_cmd_sf(commands, SCTP_CMD_SET_SK_ERR,
    SCTP_ERROR(ECONNABORTED));
  sctp_add_cmd_sf(commands, SCTP_CMD_ASSOC_FAILED,
    SCTP_PERR(SCTP_ERROR_ASCONF_ACK));
  SCTP_INC_STATS(SCTP_MIB_ABORTEDS);
  SCTP_DEC_STATS(SCTP_MIB_CURRESTAB);
  return SCTP_DISPOSITION_ABORT;
 }

 if ((rcvd_serial == sent_serial) && asoc->addip_last_asconf) {
  sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_STOP,
    SCTP_TO(SCTP_EVENT_TIMEOUT_T4_RTO));

  if (!sctp_process_asconf_ack((struct sctp_association *)asoc,
          asconf_ack)) {



   sctp_add_cmd_sf(commands, SCTP_CMD_SEND_NEXT_ASCONF,
     SCTP_NULL());
   return SCTP_DISPOSITION_CONSUME;
  }

  abort = sctp_make_abort(asoc, asconf_ack,
     sizeof(sctp_errhdr_t));
  if (abort) {
   sctp_init_cause(abort, SCTP_ERROR_RSRC_LOW, 0);
   sctp_add_cmd_sf(commands, SCTP_CMD_REPLY,
     SCTP_CHUNK(abort));
  }



  sctp_add_cmd_sf(commands, SCTP_CMD_DISCARD_PACKET,SCTP_NULL());
  sctp_add_cmd_sf(commands, SCTP_CMD_SET_SK_ERR,
    SCTP_ERROR(ECONNABORTED));
  sctp_add_cmd_sf(commands, SCTP_CMD_ASSOC_FAILED,
    SCTP_PERR(SCTP_ERROR_ASCONF_ACK));
  SCTP_INC_STATS(SCTP_MIB_ABORTEDS);
  SCTP_DEC_STATS(SCTP_MIB_CURRESTAB);
  return SCTP_DISPOSITION_ABORT;
 }

 return SCTP_DISPOSITION_DISCARD;
}
