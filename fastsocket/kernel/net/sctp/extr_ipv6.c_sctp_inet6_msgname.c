
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {scalar_t__ sin6_scope_id; scalar_t__ sin6_flowinfo; int sin6_family; } ;


 int AF_INET6 ;

__attribute__((used)) static void sctp_inet6_msgname(char *msgname, int *addr_len)
{
 struct sockaddr_in6 *sin6;

 sin6 = (struct sockaddr_in6 *)msgname;
 sin6->sin6_family = AF_INET6;
 sin6->sin6_flowinfo = 0;
 sin6->sin6_scope_id = 0;
 *addr_len = sizeof(struct sockaddr_in6);
}
