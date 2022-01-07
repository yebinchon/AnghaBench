
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {scalar_t__ sin6_port; } ;
struct sockaddr {int dummy; } ;


 scalar_t__ nfs_sockaddr_match_ipaddr6 (struct sockaddr const*,struct sockaddr const*) ;

__attribute__((used)) static int nfs_sockaddr_cmp_ip6(const struct sockaddr *sa1,
    const struct sockaddr *sa2)
{
 const struct sockaddr_in6 *sin1 = (const struct sockaddr_in6 *)sa1;
 const struct sockaddr_in6 *sin2 = (const struct sockaddr_in6 *)sa2;

 return nfs_sockaddr_match_ipaddr6(sa1, sa2) &&
  (sin1->sin6_port == sin2->sin6_port);
}
