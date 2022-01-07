
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_sock {int dummy; } ;
typedef int sa_family_t ;




 int __ipv6_only_sock (int ) ;
 int sctp_opt2sk (struct sctp_sock*) ;

__attribute__((used)) static int sctp_inet6_af_supported(sa_family_t family, struct sctp_sock *sp)
{
 switch (family) {
 case 128:
  return 1;

 case 129:
  if (!__ipv6_only_sock(sctp_opt2sk(sp)))
   return 1;
 default:
  return 0;
 }
}
