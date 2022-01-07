
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union sctp_addr {int dummy; } sctp_addr ;
struct sctp_sock {int dummy; } ;



__attribute__((used)) static int sctp_inet_send_verify(struct sctp_sock *opt, union sctp_addr *addr)
{
 return 1;
}
