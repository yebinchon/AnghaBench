
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int length; } ;
union sctp_addr_param {TYPE_2__ p; } ;
struct sctp_paramhdr {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_chunk {int source; int dest; int * transport; int has_asconf; scalar_t__ chunk_end; TYPE_1__* skb; int auth; } ;
struct TYPE_7__ {scalar_t__ addip_serial; } ;
struct sctp_association {TYPE_3__ peer; } ;
typedef int sctp_subtype_t ;
typedef int sctp_paramhdr_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;
struct TYPE_8__ {int serial; scalar_t__ params; } ;
typedef TYPE_4__ sctp_addiphdr_t ;
typedef int sctp_addip_chunk_t ;
typedef scalar_t__ __u32 ;
struct TYPE_5__ {scalar_t__ data; } ;


 int SCTP_CHUNK (struct sctp_chunk*) ;
 int SCTP_CMD_REPLY ;
 int SCTP_CMD_REPORT_BAD_TAG ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_DISPOSITION_DISCARD ;
 int SCTP_DISPOSITION_NOMEM ;
 int SCTP_NULL () ;
 scalar_t__ ntohl (int ) ;
 int ntohs (int ) ;
 int sctp_add_cmd_sf (int *,int ,int ) ;
 int sctp_addip_noauth ;
 int sctp_assoc_clean_asconf_ack_cache (struct sctp_association const*) ;
 struct sctp_chunk* sctp_assoc_lookup_asconf_ack (struct sctp_association const*,int ) ;
 int sctp_chunk_length_valid (struct sctp_chunk*,int) ;
 struct sctp_chunk* sctp_process_asconf (struct sctp_association*,struct sctp_chunk*) ;
 int sctp_sf_discard_chunk (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 int sctp_sf_pdiscard (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 int sctp_sf_violation_chunklen (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 int sctp_sf_violation_paramlen (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,void*,int *) ;
 int sctp_verify_asconf (struct sctp_association const*,int *,void*,struct sctp_paramhdr**) ;
 int sctp_vtag_verify (struct sctp_chunk*,struct sctp_association const*) ;

sctp_disposition_t sctp_sf_do_asconf(const struct sctp_endpoint *ep,
         const struct sctp_association *asoc,
         const sctp_subtype_t type, void *arg,
         sctp_cmd_seq_t *commands)
{
 struct sctp_chunk *chunk = arg;
 struct sctp_chunk *asconf_ack = ((void*)0);
 struct sctp_paramhdr *err_param = ((void*)0);
 sctp_addiphdr_t *hdr;
 union sctp_addr_param *addr_param;
 __u32 serial;
 int length;

 if (!sctp_vtag_verify(chunk, asoc)) {
  sctp_add_cmd_sf(commands, SCTP_CMD_REPORT_BAD_TAG,
    SCTP_NULL());
  return sctp_sf_pdiscard(ep, asoc, type, arg, commands);
 }







 if (!sctp_addip_noauth && !chunk->auth)
  return sctp_sf_discard_chunk(ep, asoc, type, arg, commands);


 if (!sctp_chunk_length_valid(chunk, sizeof(sctp_addip_chunk_t)))
  return sctp_sf_violation_chunklen(ep, asoc, type, arg,
        commands);

 hdr = (sctp_addiphdr_t *)chunk->skb->data;
 serial = ntohl(hdr->serial);

 addr_param = (union sctp_addr_param *)hdr->params;
 length = ntohs(addr_param->p.length);
 if (length < sizeof(sctp_paramhdr_t))
  return sctp_sf_violation_paramlen(ep, asoc, type, arg,
      (void *)addr_param, commands);


 if (!sctp_verify_asconf(asoc,
       (sctp_paramhdr_t *)((void *)addr_param + length),
       (void *)chunk->chunk_end,
       &err_param))
  return sctp_sf_violation_paramlen(ep, asoc, type, arg,
        (void *)err_param, commands);





 if (serial == asoc->peer.addip_serial + 1) {



  if (!chunk->has_asconf)
   sctp_assoc_clean_asconf_ack_cache(asoc);
  asconf_ack = sctp_process_asconf((struct sctp_association *)
       asoc, chunk);
  if (!asconf_ack)
   return SCTP_DISPOSITION_NOMEM;
 } else if (serial < asoc->peer.addip_serial + 1) {
  asconf_ack = sctp_assoc_lookup_asconf_ack(asoc, hdr->serial);
  if (!asconf_ack)
   return SCTP_DISPOSITION_DISCARD;





  asconf_ack->transport = ((void*)0);
 } else {



  return SCTP_DISPOSITION_DISCARD;
 }
 asconf_ack->dest = chunk->source;
 sctp_add_cmd_sf(commands, SCTP_CMD_REPLY, SCTP_CHUNK(asconf_ack));

 return SCTP_DISPOSITION_CONSUME;
}
