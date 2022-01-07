
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sctp_endpoint {int dummy; } ;
struct sctp_association {int dummy; } ;
struct TYPE_3__ {int chunk; } ;
typedef TYPE_1__ sctp_subtype_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;


 int SCTP_DEBUG_PRINTK (char*,int ) ;
 int SCTP_DISPOSITION_CONSUME ;

sctp_disposition_t sctp_sf_timer_ignore(const struct sctp_endpoint *ep,
     const struct sctp_association *asoc,
     const sctp_subtype_t type,
     void *arg,
     sctp_cmd_seq_t *commands)
{
 SCTP_DEBUG_PRINTK("Timer %d ignored.\n", type.chunk);
 return SCTP_DISPOSITION_CONSUME;
}
