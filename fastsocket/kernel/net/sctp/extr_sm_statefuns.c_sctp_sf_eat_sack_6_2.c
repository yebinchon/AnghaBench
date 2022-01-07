
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sctp_endpoint {int dummy; } ;
struct TYPE_5__ {TYPE_2__* sack_hdr; } ;
struct sctp_chunk {TYPE_1__ subh; } ;
struct sctp_association {int next_tsn; int ctsn_ack_point; } ;
typedef int sctp_subtype_t ;
struct TYPE_6__ {int cum_tsn_ack; } ;
typedef TYPE_2__ sctp_sackhdr_t ;
typedef int sctp_sack_chunk_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;
typedef int __u32 ;


 int SCTP_CMD_PROCESS_SACK ;
 int SCTP_DEBUG_PRINTK (char*,int ) ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_DISPOSITION_DISCARD ;
 int SCTP_SACKH (TYPE_2__*) ;
 scalar_t__ TSN_lt (int ,int ) ;
 int ntohl (int ) ;
 int sctp_add_cmd_sf (int *,int ,int ) ;
 int sctp_chunk_length_valid (struct sctp_chunk*,int) ;
 int sctp_sf_pdiscard (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 int sctp_sf_violation_chunklen (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 int sctp_sf_violation_ctsn (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 TYPE_2__* sctp_sm_pull_sack (struct sctp_chunk*) ;
 int sctp_vtag_verify (struct sctp_chunk*,struct sctp_association const*) ;

sctp_disposition_t sctp_sf_eat_sack_6_2(const struct sctp_endpoint *ep,
     const struct sctp_association *asoc,
     const sctp_subtype_t type,
     void *arg,
     sctp_cmd_seq_t *commands)
{
 struct sctp_chunk *chunk = arg;
 sctp_sackhdr_t *sackh;
 __u32 ctsn;

 if (!sctp_vtag_verify(chunk, asoc))
  return sctp_sf_pdiscard(ep, asoc, type, arg, commands);


 if (!sctp_chunk_length_valid(chunk, sizeof(sctp_sack_chunk_t)))
  return sctp_sf_violation_chunklen(ep, asoc, type, arg,
        commands);


 sackh = sctp_sm_pull_sack(chunk);

 if (!sackh)
  return sctp_sf_pdiscard(ep, asoc, type, arg, commands);
 chunk->subh.sack_hdr = sackh;
 ctsn = ntohl(sackh->cum_tsn_ack);







 if (TSN_lt(ctsn, asoc->ctsn_ack_point)) {
  SCTP_DEBUG_PRINTK("ctsn %x\n", ctsn);
  SCTP_DEBUG_PRINTK("ctsn_ack_point %x\n", asoc->ctsn_ack_point);
  return SCTP_DISPOSITION_DISCARD;
 }





 if (!TSN_lt(ctsn, asoc->next_tsn))
  return sctp_sf_violation_ctsn(ep, asoc, type, arg, commands);


 sctp_add_cmd_sf(commands, SCTP_CMD_PROCESS_SACK, SCTP_SACKH(sackh));




 return SCTP_DISPOSITION_CONSUME;
}
