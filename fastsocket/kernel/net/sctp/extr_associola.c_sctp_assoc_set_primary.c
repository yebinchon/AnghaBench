
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union sctp_addr {int dummy; } sctp_addr ;
struct TYPE_6__ {int changeover_active; int cycling_changeover; int next_tsn_at_change; } ;
struct sctp_transport {scalar_t__ state; TYPE_3__ cacc; int ipaddr; } ;
struct TYPE_5__ {int out_qlen; int outstanding_bytes; } ;
struct TYPE_4__ {struct sctp_transport* active_path; int primary_addr; struct sctp_transport* primary_path; } ;
struct sctp_association {int next_tsn; TYPE_2__ outqueue; TYPE_1__ peer; } ;


 scalar_t__ SCTP_ACTIVE ;
 scalar_t__ SCTP_UNKNOWN ;
 int memcpy (int *,int *,int) ;

void sctp_assoc_set_primary(struct sctp_association *asoc,
       struct sctp_transport *transport)
{
 int changeover = 0;




 if (asoc->peer.primary_path != ((void*)0) &&
     asoc->peer.primary_path != transport)
  changeover = 1 ;

 asoc->peer.primary_path = transport;


 memcpy(&asoc->peer.primary_addr, &transport->ipaddr,
        sizeof(union sctp_addr));




 if ((transport->state == SCTP_ACTIVE) ||
     (transport->state == SCTP_UNKNOWN))
  asoc->peer.active_path = transport;
 if (!asoc->outqueue.outstanding_bytes && !asoc->outqueue.out_qlen)
  return;

 if (transport->cacc.changeover_active)
  transport->cacc.cycling_changeover = changeover;




 transport->cacc.changeover_active = changeover;




 transport->cacc.next_tsn_at_change = asoc->next_tsn;
}
