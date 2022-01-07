
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_endpoint {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef int sctp_subtype_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;


 int SCTP_DISPOSITION_BUG ;

sctp_disposition_t sctp_sf_bug(const struct sctp_endpoint *ep,
          const struct sctp_association *asoc,
          const sctp_subtype_t type,
          void *arg,
          sctp_cmd_seq_t *commands)
{
 return SCTP_DISPOSITION_BUG;
}
