
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_endpoint {int dummy; } ;
struct sctp_datamsg {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef int sctp_subtype_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;


 int SCTP_CMD_SEND_MSG ;
 int SCTP_DATAMSG (struct sctp_datamsg*) ;
 int SCTP_DISPOSITION_CONSUME ;
 int sctp_add_cmd_sf (int *,int ,int ) ;

sctp_disposition_t sctp_sf_do_prm_send(const struct sctp_endpoint *ep,
           const struct sctp_association *asoc,
           const sctp_subtype_t type,
           void *arg,
           sctp_cmd_seq_t *commands)
{
 struct sctp_datamsg *msg = arg;

 sctp_add_cmd_sf(commands, SCTP_CMD_SEND_MSG, SCTP_DATAMSG(msg));
 return SCTP_DISPOSITION_CONSUME;
}
