
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_endpoint {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef int sctp_subtype_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;
typedef int err_str ;


 int sctp_sf_abort_violation (struct sctp_endpoint const*,struct sctp_association const*,void*,int *,char const*,int) ;

__attribute__((used)) static sctp_disposition_t sctp_sf_violation_chunklen(
         const struct sctp_endpoint *ep,
         const struct sctp_association *asoc,
         const sctp_subtype_t type,
         void *arg,
         sctp_cmd_seq_t *commands)
{
 static const char err_str[]="The following chunk had invalid length:";

 return sctp_sf_abort_violation(ep, asoc, arg, commands, err_str,
     sizeof(err_str));
}
