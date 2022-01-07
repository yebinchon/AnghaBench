
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sctp_endpoint {int dummy; } ;
struct TYPE_2__ {scalar_t__ data_hdr; } ;
struct sctp_chunk {scalar_t__ end_of_packet; TYPE_1__ subh; } ;
struct sctp_association {int dummy; } ;
typedef int sctp_subtype_t ;
typedef int sctp_disposition_t ;
typedef int sctp_datahdr_t ;
typedef int sctp_data_chunk_t ;
typedef int sctp_cmd_seq_t ;


 int BUG () ;
 int SCTP_CMD_GEN_SACK ;
 int SCTP_CMD_GEN_SHUTDOWN ;
 int SCTP_CMD_REPORT_BAD_TAG ;
 int SCTP_CMD_TIMER_RESTART ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_EVENT_TIMEOUT_T2_SHUTDOWN ;
 int SCTP_FORCE () ;







 int SCTP_NULL () ;
 int SCTP_TO (int ) ;
 int sctp_add_cmd_sf (int *,int ,int ) ;
 int sctp_chunk_length_valid (struct sctp_chunk*,int) ;
 int sctp_eat_data (struct sctp_association const*,struct sctp_chunk*,int *) ;
 int sctp_sf_abort_violation (struct sctp_endpoint const*,struct sctp_association const*,struct sctp_chunk*,int *,int *,int) ;
 int sctp_sf_pdiscard (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 int sctp_sf_violation_chunklen (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 int sctp_vtag_verify (struct sctp_chunk*,struct sctp_association const*) ;

sctp_disposition_t sctp_sf_eat_data_fast_4_4(const struct sctp_endpoint *ep,
         const struct sctp_association *asoc,
         const sctp_subtype_t type,
         void *arg,
         sctp_cmd_seq_t *commands)
{
 struct sctp_chunk *chunk = arg;
 int error;

 if (!sctp_vtag_verify(chunk, asoc)) {
  sctp_add_cmd_sf(commands, SCTP_CMD_REPORT_BAD_TAG,
    SCTP_NULL());
  return sctp_sf_pdiscard(ep, asoc, type, arg, commands);
 }

 if (!sctp_chunk_length_valid(chunk, sizeof(sctp_data_chunk_t)))
  return sctp_sf_violation_chunklen(ep, asoc, type, arg,
        commands);

 error = sctp_eat_data(asoc, chunk, commands );
 switch (error) {
 case 129:
 case 132:
 case 133:
 case 131:
 case 134:
  break;
 case 130:
  goto consume;
 case 128:
  return sctp_sf_abort_violation(ep, asoc, chunk, commands,
   (u8 *)chunk->subh.data_hdr, sizeof(sctp_datahdr_t));
 default:
  BUG();
 }
 if (chunk->end_of_packet) {



  sctp_add_cmd_sf(commands, SCTP_CMD_GEN_SHUTDOWN, SCTP_NULL());
  sctp_add_cmd_sf(commands, SCTP_CMD_GEN_SACK, SCTP_FORCE());
  sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_RESTART,
    SCTP_TO(SCTP_EVENT_TIMEOUT_T2_SHUTDOWN));
 }

consume:
 return SCTP_DISPOSITION_CONSUME;
}
