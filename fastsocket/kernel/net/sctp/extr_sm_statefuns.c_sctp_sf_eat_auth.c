
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sctp_ulpevent {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_chunk {TYPE_2__* skb; } ;
struct sctp_authhdr {int shkey_id; int hmac_id; } ;
struct sctp_auth_chunk {int dummy; } ;
struct TYPE_3__ {int auth_capable; } ;
struct sctp_association {scalar_t__ active_key_id; TYPE_1__ peer; } ;
typedef int sctp_subtype_t ;
typedef int sctp_ierror_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;
typedef int __u16 ;
struct TYPE_4__ {scalar_t__ data; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int SCTP_AUTH_NEWKEY ;
 int SCTP_CHUNK (struct sctp_chunk*) ;
 int SCTP_CMD_EVENT_ULP ;
 int SCTP_CMD_REPLY ;
 int SCTP_CMD_REPORT_BAD_TAG ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_DISPOSITION_NOMEM ;
 int SCTP_ERROR_UNSUP_HMAC ;





 int SCTP_NULL () ;
 int SCTP_ULPEVENT (struct sctp_ulpevent*) ;
 scalar_t__ ntohs (int ) ;
 int sctp_add_cmd_sf (int *,int ,int ) ;
 int sctp_chunk_length_valid (struct sctp_chunk*,int) ;
 struct sctp_chunk* sctp_make_op_error (struct sctp_association const*,struct sctp_chunk*,int ,int *,int,int ) ;
 int sctp_sf_authenticate (struct sctp_endpoint const*,struct sctp_association const*,int const,struct sctp_chunk*) ;
 int sctp_sf_pdiscard (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 int sctp_sf_unk_chunk (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 int sctp_sf_violation_chunklen (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 struct sctp_ulpevent* sctp_ulpevent_make_authkey (struct sctp_association const*,scalar_t__,int ,int ) ;
 int sctp_vtag_verify (struct sctp_chunk*,struct sctp_association const*) ;

sctp_disposition_t sctp_sf_eat_auth(const struct sctp_endpoint *ep,
        const struct sctp_association *asoc,
        const sctp_subtype_t type,
        void *arg,
        sctp_cmd_seq_t *commands)
{
 struct sctp_authhdr *auth_hdr;
 struct sctp_chunk *chunk = arg;
 struct sctp_chunk *err_chunk;
 sctp_ierror_t error;


 if (!asoc->peer.auth_capable)
  return sctp_sf_unk_chunk(ep, asoc, type, arg, commands);

 if (!sctp_vtag_verify(chunk, asoc)) {
  sctp_add_cmd_sf(commands, SCTP_CMD_REPORT_BAD_TAG,
    SCTP_NULL());
  return sctp_sf_pdiscard(ep, asoc, type, arg, commands);
 }


 if (!sctp_chunk_length_valid(chunk, sizeof(struct sctp_auth_chunk)))
  return sctp_sf_violation_chunklen(ep, asoc, type, arg,
        commands);

 auth_hdr = (struct sctp_authhdr *)chunk->skb->data;
 error = sctp_sf_authenticate(ep, asoc, type, chunk);
 switch (error) {
  case 132:



   err_chunk = sctp_make_op_error(asoc, chunk,
       SCTP_ERROR_UNSUP_HMAC,
       &auth_hdr->hmac_id,
       sizeof(__u16), 0);
   if (err_chunk) {
    sctp_add_cmd_sf(commands, SCTP_CMD_REPLY,
      SCTP_CHUNK(err_chunk));
   }

  case 131:
  case 130:
   return sctp_sf_pdiscard(ep, asoc, type, arg, commands);
   break;
  case 128:
   return sctp_sf_violation_chunklen(ep, asoc, type, arg,
         commands);
   break;
  case 129:
   return SCTP_DISPOSITION_NOMEM;
  default:
   break;
 }

 if (asoc->active_key_id != ntohs(auth_hdr->shkey_id)) {
  struct sctp_ulpevent *ev;

  ev = sctp_ulpevent_make_authkey(asoc, ntohs(auth_hdr->shkey_id),
        SCTP_AUTH_NEWKEY, GFP_ATOMIC);

  if (!ev)
   return -ENOMEM;

  sctp_add_cmd_sf(commands, SCTP_CMD_EVENT_ULP,
    SCTP_ULPEVENT(ev));
 }

 return SCTP_DISPOSITION_CONSUME;
}
