
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sctp_endpoint {int dummy; } ;
struct sctp_chunk {TYPE_2__* skb; } ;
struct sctp_association {int dummy; } ;
typedef int sctp_subtype_t ;
struct TYPE_3__ {int lowest_tsn; } ;
typedef TYPE_1__ sctp_ecnehdr_t ;
typedef int sctp_ecne_chunk_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;
struct TYPE_4__ {scalar_t__ data; } ;


 int SCTP_CMD_ECN_ECNE ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_U32 (int ) ;
 int ntohl (int ) ;
 int sctp_add_cmd_sf (int *,int ,int ) ;
 int sctp_chunk_length_valid (struct sctp_chunk*,int) ;
 int sctp_sf_pdiscard (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 int sctp_sf_violation_chunklen (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 int sctp_vtag_verify (struct sctp_chunk*,struct sctp_association const*) ;
 int skb_pull (TYPE_2__*,int) ;

sctp_disposition_t sctp_sf_do_ecne(const struct sctp_endpoint *ep,
       const struct sctp_association *asoc,
       const sctp_subtype_t type,
       void *arg,
       sctp_cmd_seq_t *commands)
{
 sctp_ecnehdr_t *ecne;
 struct sctp_chunk *chunk = arg;

 if (!sctp_vtag_verify(chunk, asoc))
  return sctp_sf_pdiscard(ep, asoc, type, arg, commands);

 if (!sctp_chunk_length_valid(chunk, sizeof(sctp_ecne_chunk_t)))
  return sctp_sf_violation_chunklen(ep, asoc, type, arg,
        commands);

 ecne = (sctp_ecnehdr_t *) chunk->skb->data;
 skb_pull(chunk->skb, sizeof(sctp_ecnehdr_t));


 sctp_add_cmd_sf(commands, SCTP_CMD_ECN_ECNE,
   SCTP_U32(ntohl(ecne->lowest_tsn)));

 return SCTP_DISPOSITION_CONSUME;
}
