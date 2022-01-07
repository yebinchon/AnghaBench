
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_transport {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef int sctp_subtype_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;


 int ENOPROTOOPT ;
 int SCTP_ERROR_NO_ERROR ;
 int sctp_stop_t1_and_abort (int *,int ,int ,struct sctp_association const*,struct sctp_transport*) ;

sctp_disposition_t sctp_sf_cookie_wait_icmp_abort(const struct sctp_endpoint *ep,
     const struct sctp_association *asoc,
     const sctp_subtype_t type,
     void *arg,
     sctp_cmd_seq_t *commands)
{
 return sctp_stop_t1_and_abort(commands, SCTP_ERROR_NO_ERROR,
          ENOPROTOOPT, asoc,
          (struct sctp_transport *)arg);
}
