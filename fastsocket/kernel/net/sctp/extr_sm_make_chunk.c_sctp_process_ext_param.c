
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union sctp_params {TYPE_3__* ext; TYPE_2__* p; } ;
struct TYPE_4__ {int prsctp_capable; int auth_capable; int asconf_capable; } ;
struct sctp_association {TYPE_1__ peer; } ;
typedef int sctp_paramhdr_t ;
typedef int __u16 ;
struct TYPE_6__ {int* chunks; } ;
struct TYPE_5__ {int length; } ;






 int ntohs (int ) ;
 int sctp_addip_enable ;
 int sctp_auth_enable ;
 int sctp_prsctp_enable ;

__attribute__((used)) static void sctp_process_ext_param(struct sctp_association *asoc,
        union sctp_params param)
{
 __u16 num_ext = ntohs(param.p->length) - sizeof(sctp_paramhdr_t);
 int i;

 for (i = 0; i < num_ext; i++) {
  switch (param.ext->chunks[i]) {
      case 128:
       if (sctp_prsctp_enable &&
    !asoc->peer.prsctp_capable)
        asoc->peer.prsctp_capable = 1;
       break;
      case 129:



       if (sctp_auth_enable)
        asoc->peer.auth_capable = 1;
       break;
      case 131:
      case 130:
       if (sctp_addip_enable)
        asoc->peer.asconf_capable = 1;
       break;
      default:
       break;
  }
 }
}
