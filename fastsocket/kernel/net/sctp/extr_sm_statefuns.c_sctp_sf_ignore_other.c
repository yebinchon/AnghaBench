
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sctp_endpoint {int dummy; } ;
struct sctp_association {int dummy; } ;
struct TYPE_3__ {int other; } ;
typedef TYPE_1__ sctp_subtype_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;


 int SCTP_DEBUG_PRINTK (char*,int ) ;
 int SCTP_DISPOSITION_DISCARD ;

sctp_disposition_t sctp_sf_ignore_other(const struct sctp_endpoint *ep,
     const struct sctp_association *asoc,
     const sctp_subtype_t type,
     void *arg,
     sctp_cmd_seq_t *commands)
{
 SCTP_DEBUG_PRINTK("The event other type %d is ignored\n", type.other);
 return SCTP_DISPOSITION_DISCARD;
}
