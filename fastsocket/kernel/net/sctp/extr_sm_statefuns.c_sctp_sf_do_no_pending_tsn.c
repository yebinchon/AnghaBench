
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_ulpevent {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef int sctp_subtype_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;


 int GFP_ATOMIC ;
 int SCTP_CMD_EVENT_ULP ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_DISPOSITION_NOMEM ;
 int SCTP_ULPEVENT (struct sctp_ulpevent*) ;
 int sctp_add_cmd_sf (int *,int ,int ) ;
 struct sctp_ulpevent* sctp_ulpevent_make_sender_dry_event (struct sctp_association const*,int ) ;

sctp_disposition_t sctp_sf_do_no_pending_tsn(
 const struct sctp_endpoint *ep,
 const struct sctp_association *asoc,
 const sctp_subtype_t type,
 void *arg,
 sctp_cmd_seq_t *commands)
{
 struct sctp_ulpevent *event;

 event = sctp_ulpevent_make_sender_dry_event(asoc, GFP_ATOMIC);
 if (!event)
  return SCTP_DISPOSITION_NOMEM;

 sctp_add_cmd_sf(commands, SCTP_CMD_EVENT_ULP, SCTP_ULPEVENT(event));

 return SCTP_DISPOSITION_CONSUME;
}
