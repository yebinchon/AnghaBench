
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union sctp_params {TYPE_2__* ext; TYPE_1__* p; } ;
typedef int sctp_paramhdr_t ;
typedef int __u16 ;
struct TYPE_4__ {int* chunks; } ;
struct TYPE_3__ {int length; } ;





 int ntohs (int ) ;
 scalar_t__ sctp_addip_enable ;
 scalar_t__ sctp_addip_noauth ;

__attribute__((used)) static int sctp_verify_ext_param(union sctp_params param)
{
 __u16 num_ext = ntohs(param.p->length) - sizeof(sctp_paramhdr_t);
 int have_auth = 0;
 int have_asconf = 0;
 int i;

 for (i = 0; i < num_ext; i++) {
  switch (param.ext->chunks[i]) {
      case 128:
       have_auth = 1;
       break;
      case 130:
      case 129:
       have_asconf = 1;
       break;
  }
 }






 if (sctp_addip_noauth)
  return 1;

 if (sctp_addip_enable && !have_auth && have_asconf)
  return 0;

 return 1;
}
