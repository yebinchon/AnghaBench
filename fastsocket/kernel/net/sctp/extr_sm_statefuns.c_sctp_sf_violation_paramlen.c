
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_paramhdr {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef int sctp_subtype_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;


 int ECONNABORTED ;
 int SCTP_CHUNK (struct sctp_chunk*) ;
 int SCTP_CID_ABORT ;
 int SCTP_CMD_ASSOC_FAILED ;
 int SCTP_CMD_REPLY ;
 int SCTP_CMD_SET_SK_ERR ;
 int SCTP_DEC_STATS (int ) ;
 int SCTP_DISPOSITION_ABORT ;
 int SCTP_DISPOSITION_NOMEM ;
 int SCTP_ERROR (int ) ;
 int SCTP_ERROR_PROTO_VIOLATION ;
 int SCTP_INC_STATS (int ) ;
 int SCTP_MIB_ABORTEDS ;
 int SCTP_MIB_CURRESTAB ;
 int SCTP_MIB_OUTCTRLCHUNKS ;
 int SCTP_PERR (int ) ;
 int SCTP_ST_CHUNK (int ) ;
 int sctp_add_cmd_sf (int *,int ,int ) ;
 scalar_t__ sctp_auth_recv_cid (int ,struct sctp_association const*) ;
 struct sctp_chunk* sctp_make_violation_paramlen (struct sctp_association const*,struct sctp_chunk*,struct sctp_paramhdr*) ;
 int sctp_sf_pdiscard (struct sctp_endpoint const*,struct sctp_association const*,int ,void*,int *) ;

__attribute__((used)) static sctp_disposition_t sctp_sf_violation_paramlen(
         const struct sctp_endpoint *ep,
         const struct sctp_association *asoc,
         const sctp_subtype_t type,
         void *arg, void *ext,
         sctp_cmd_seq_t *commands)
{
 struct sctp_chunk *chunk = arg;
 struct sctp_paramhdr *param = ext;
 struct sctp_chunk *abort = ((void*)0);

 if (sctp_auth_recv_cid(SCTP_CID_ABORT, asoc))
  goto discard;


 abort = sctp_make_violation_paramlen(asoc, chunk, param);
 if (!abort)
  goto nomem;

 sctp_add_cmd_sf(commands, SCTP_CMD_REPLY, SCTP_CHUNK(abort));
 SCTP_INC_STATS(SCTP_MIB_OUTCTRLCHUNKS);

 sctp_add_cmd_sf(commands, SCTP_CMD_SET_SK_ERR,
   SCTP_ERROR(ECONNABORTED));
 sctp_add_cmd_sf(commands, SCTP_CMD_ASSOC_FAILED,
   SCTP_PERR(SCTP_ERROR_PROTO_VIOLATION));
 SCTP_DEC_STATS(SCTP_MIB_CURRESTAB);
 SCTP_INC_STATS(SCTP_MIB_ABORTEDS);

discard:
 sctp_sf_pdiscard(ep, asoc, SCTP_ST_CHUNK(0), arg, commands);
 return SCTP_DISPOSITION_ABORT;
nomem:
 return SCTP_DISPOSITION_NOMEM;
}
