
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sin_port; } ;
struct TYPE_6__ {TYPE_1__ v4; } ;
struct sctp_transport {scalar_t__ state; scalar_t__ error_count; scalar_t__ pathmaxrxt; int rto; TYPE_2__* asoc; scalar_t__ hb_sent; TYPE_3__ ipaddr; } ;
struct sctp_association {scalar_t__ pf_retrans; int overall_error_count; } ;
typedef int sctp_cmd_seq_t ;
struct TYPE_5__ {int rto_max; } ;


 int SCTP_DEBUG_PRINTK_IPADDR (char*,char*,struct sctp_association*,TYPE_3__*,int ) ;
 int SCTP_FAILED_THRESHOLD ;
 scalar_t__ SCTP_INACTIVE ;
 scalar_t__ SCTP_PF ;
 int SCTP_TRANSPORT_DOWN ;
 int SCTP_TRANSPORT_PF ;
 scalar_t__ SCTP_UNCONFIRMED ;
 int min (int,int ) ;
 int ntohs (int ) ;
 int sctp_assoc_control_transport (struct sctp_association*,struct sctp_transport*,int ,int ) ;
 int sctp_cmd_hb_timer_update (int *,struct sctp_transport*) ;
 int sctp_max_rto (struct sctp_association*,struct sctp_transport*) ;

__attribute__((used)) static void sctp_do_8_2_transport_strike(sctp_cmd_seq_t *commands,
      struct sctp_association *asoc,
      struct sctp_transport *transport,
      int is_hb)
{
 if (!is_hb) {
  asoc->overall_error_count++;
  if (transport->state != SCTP_INACTIVE)
   transport->error_count++;
  } else if (transport->hb_sent) {
  if (transport->state != SCTP_UNCONFIRMED)
   asoc->overall_error_count++;
  if (transport->state != SCTP_INACTIVE)
   transport->error_count++;
 }






 if ((transport->state != SCTP_PF) &&
    (asoc->pf_retrans < transport->pathmaxrxt) &&
    (transport->error_count > asoc->pf_retrans)) {

  sctp_assoc_control_transport(asoc, transport,
          SCTP_TRANSPORT_PF,
          0);


  sctp_cmd_hb_timer_update(commands, transport);
 }

 if (transport->state != SCTP_INACTIVE &&
     (transport->error_count > transport->pathmaxrxt)) {
  SCTP_DEBUG_PRINTK_IPADDR("transport_strike:association %p",
      " transport IP: port:%d failed.\n",
      asoc,
      (&transport->ipaddr),
      ntohs(transport->ipaddr.v4.sin_port));
  sctp_assoc_control_transport(asoc, transport,
          SCTP_TRANSPORT_DOWN,
          SCTP_FAILED_THRESHOLD);
 }
 if (!is_hb || transport->hb_sent) {
  transport->rto = min((transport->rto * 2), transport->asoc->rto_max);
  sctp_max_rto(asoc, transport);
 }
}
