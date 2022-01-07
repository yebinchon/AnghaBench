
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sctp_transport {int hb_nonce; int ipaddr; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef int sctp_subtype_t ;
struct TYPE_4__ {int length; int type; } ;
struct TYPE_5__ {int hb_nonce; int sent_at; int daddr; TYPE_1__ param_hdr; } ;
typedef TYPE_2__ sctp_sender_hb_info_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;


 int SCTP_CHUNK (struct sctp_chunk*) ;
 int SCTP_CMD_REPLY ;
 int SCTP_CMD_RTO_PENDING ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_DISPOSITION_NOMEM ;
 int SCTP_PARAM_HEARTBEAT_INFO ;
 int SCTP_TRANSPORT (struct sctp_transport*) ;
 int htons (int) ;
 int jiffies ;
 int sctp_add_cmd_sf (int *,int ,int ) ;
 struct sctp_chunk* sctp_make_heartbeat (struct sctp_association const*,struct sctp_transport*,TYPE_2__*,size_t) ;

__attribute__((used)) static sctp_disposition_t sctp_sf_heartbeat(const struct sctp_endpoint *ep,
         const struct sctp_association *asoc,
         const sctp_subtype_t type,
         void *arg,
         sctp_cmd_seq_t *commands)
{
 struct sctp_transport *transport = (struct sctp_transport *) arg;
 struct sctp_chunk *reply;
 sctp_sender_hb_info_t hbinfo;
 size_t paylen = 0;

 hbinfo.param_hdr.type = SCTP_PARAM_HEARTBEAT_INFO;
 hbinfo.param_hdr.length = htons(sizeof(sctp_sender_hb_info_t));
 hbinfo.daddr = transport->ipaddr;
 hbinfo.sent_at = jiffies;
 hbinfo.hb_nonce = transport->hb_nonce;


 paylen = sizeof(sctp_sender_hb_info_t);
 reply = sctp_make_heartbeat(asoc, transport, &hbinfo, paylen);
 if (!reply)
  return SCTP_DISPOSITION_NOMEM;




 sctp_add_cmd_sf(commands, SCTP_CMD_RTO_PENDING,
   SCTP_TRANSPORT(transport));

 sctp_add_cmd_sf(commands, SCTP_CMD_REPLY, SCTP_CHUNK(reply));
 return SCTP_DISPOSITION_CONSUME;
}
