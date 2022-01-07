
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 struct sock* sctp_ctl_sock ;

struct sock *sctp_get_ctl_sock(void)
{
 return sctp_ctl_sock;
}
