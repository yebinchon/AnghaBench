
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_endpoint {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef int sctp_subtype_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;
struct TYPE_2__ {struct sctp_endpoint const* ep; } ;


 int sctp_get_ctl_sock () ;
 int sctp_sf_discard_chunk (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 int sctp_sf_ootb (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 TYPE_1__* sctp_sk (int ) ;

sctp_disposition_t sctp_sf_do_5_2_3_initack(const struct sctp_endpoint *ep,
         const struct sctp_association *asoc,
         const sctp_subtype_t type,
         void *arg, sctp_cmd_seq_t *commands)
{



 if (ep == sctp_sk((sctp_get_ctl_sock()))->ep)
  return sctp_sf_ootb(ep, asoc, type, arg, commands);
 else
  return sctp_sf_discard_chunk(ep, asoc, type, arg, commands);
}
