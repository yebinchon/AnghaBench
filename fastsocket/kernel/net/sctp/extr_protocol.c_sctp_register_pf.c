
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_pf {int dummy; } ;
typedef int sa_family_t ;




 struct sctp_pf* sctp_pf_inet6_specific ;
 struct sctp_pf* sctp_pf_inet_specific ;

int sctp_register_pf(struct sctp_pf *pf, sa_family_t family)
{
 switch (family) {
 case 129:
  if (sctp_pf_inet_specific)
   return 0;
  sctp_pf_inet_specific = pf;
  break;
 case 128:
  if (sctp_pf_inet6_specific)
   return 0;
  sctp_pf_inet6_specific = pf;
  break;
 default:
  return 0;
 }
 return 1;
}
