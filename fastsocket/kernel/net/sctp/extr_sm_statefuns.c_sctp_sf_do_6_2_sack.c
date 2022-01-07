
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_endpoint {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef int sctp_subtype_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;


 int SCTP_CMD_GEN_SACK ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_FORCE () ;
 int SCTP_INC_STATS (int ) ;
 int SCTP_MIB_DELAY_SACK_EXPIREDS ;
 int sctp_add_cmd_sf (int *,int ,int ) ;

sctp_disposition_t sctp_sf_do_6_2_sack(const struct sctp_endpoint *ep,
           const struct sctp_association *asoc,
           const sctp_subtype_t type,
           void *arg,
           sctp_cmd_seq_t *commands)
{
 SCTP_INC_STATS(SCTP_MIB_DELAY_SACK_EXPIREDS);
 sctp_add_cmd_sf(commands, SCTP_CMD_GEN_SACK, SCTP_FORCE());
 return SCTP_DISPOSITION_CONSUME;
}
